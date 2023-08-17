from typing import List, Optional
import glob
import os
import sys

from ppcgrader.config import Config
from ppcgrader.runner import Runner, AsanRunner, TsanRunner, MemcheckRunner, NvprofRunner
from ppcgrader.compiler import Compiler, ClangCompiler, NvccCompiler, find_clang_compiler
from ppcgrader.reporter import Reporter

MAX_ASSEMBLY_OUTPUT = 600000  # Bytes


class Command:
    def __init__(self, name: str, config: Config):
        self.name = name
        self.config = config

    def collect_tests(self, tests: List[str]) -> List[str]:
        raise NotImplementedError

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float]) -> bool:
        raise NotImplementedError


class TestCommandBase(Command):
    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['tests/*', 'benchmarks/*'])
        if not tests:
            no_tests_error(user_tests, ['tests', 'benchmarks'])
        return tests

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float]) -> bool:
        reporter.log(self.start_message, 'title')
        runner = self._init_runner()
        compiler = self._find_compiler(compiler)
        compiler = self._prepare_compiler(self.config.common_flags(compiler),
                                          runner)
        tests = self.collect_tests(tests)

        rep = reporter.test_group(self.name, tests)
        output = rep.compilation(
            compiler.add_source(self.config.tester).add_source(
                self.config.source)).compile(out_file=self.config.binary)
        if not output.is_success():
            return False

        for test in tests:
            runner_output = runner.run(self.config,
                                       self.config.test_command(test),
                                       timeout=parse_timeout(test, timeout))
            rep.test(test, runner_output)
            if not self.config.ignore_errors:
                if runner_output.errors or not runner_output.run_successful:
                    return False

        return True

    # Hooks to modify the behavior of the command
    start_message = 'Running tests'

    def _init_runner(self) -> Runner:
        return Runner()

    def _find_compiler(self, compiler: Optional[Compiler]) -> Compiler:
        compiler = self.config.find_compiler(
        ) if compiler is None else compiler
        if compiler is None:
            sys.exit("I'm sorry, I could not find a suitable compiler.")
        return compiler

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler


class SmallTestCommandBase(TestCommandBase):
    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['tests/*'])
        if not tests:
            no_tests_error(user_tests, ['tests'])
        return tests


class TestPlainCommand(TestCommandBase):
    start_message = 'Running tests'

    def _prepare_compiler(self, compiler: Compiler,
                          runner: AsanRunner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g')


class TestAsanCommand(SmallTestCommandBase):
    start_message = 'Running tests with address sanitizer'

    def _init_runner(self) -> Runner:
        return AsanRunner()

    def _prepare_compiler(self, compiler: Compiler,
                          runner: AsanRunner) -> Compiler:
        if isinstance(compiler, NvccCompiler):
            compiler = compiler.add_flag('-Xcompiler',
                                         '"-fsanitize=address"').add_flag(
                                             '-Xcompiler',
                                             '"-fsanitize=undefined"')
            runner.env[
                'ASAN_OPTIONS'] = 'protect_shadow_gap=0:replace_intrin=0:detect_leaks=0'
        else:
            compiler = compiler.add_flag('-fsanitize=address').add_flag(
                '-fsanitize=undefined')
        compiler = compiler.add_flag('-g')
        return compiler


class TestMemcheckCommandBase(TestCommandBase):
    def __init__(self, name: str, config: Config, tool: str):
        self.tool = tool
        super().__init__(name, config)

    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['tests/*memcheck*']) or expand_glob(
            user_tests, ['tests/*medium*'])
        if not tests:
            no_tests_error(user_tests, ['tests'])
        return tests

    @property
    def start_message(self) -> str:
        return f'Running tests with cuda-memcheck --tool {self.tool}'

    def _init_runner(self) -> Runner:
        return MemcheckRunner(self.tool)

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g').add_flag(
            '-Xcompiler', '-rdynamic').add_flag('-lineinfo')


class TestMemcheckCommand(TestMemcheckCommandBase):
    def __init__(self, name: str, config: Config):
        super().__init__(name, config, tool='memcheck')


class TestRacecheckCommand(TestMemcheckCommandBase):
    def __init__(self, name, config: Config):
        super().__init__(name, config, tool='racecheck')


class TestInitcheckCommand(TestMemcheckCommandBase):
    def __init__(self, name, config: Config):
        super().__init__(name, config, tool='initcheck')


class TestSynccheckCommand(TestMemcheckCommandBase):
    def __init__(self, name, config: Config):
        super().__init__(name, config, tool='synccheck')


class TestUninitCommand(TestCommandBase):
    start_message = 'Running tests with uninitialized variable check'

    def _find_compiler(self, compiler: Optional[Compiler]) -> Compiler:
        compiler = find_clang_compiler() if compiler is None else compiler
        if compiler is None or not isinstance(
                compiler, ClangCompiler) or compiler.version is None:
            sys.exit("I'm sorry, I could not find a suitable clang compiler.")
        if compiler.version[0] < 8:
            sys.exit(
                f"I'm sorry, but the clang compiler {compiler} is too old.")
        return compiler

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g').add_flag(
            '-ftrivial-auto-var-init=pattern')


class BenchmarkCommandBase(Command):
    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float]) -> bool:
        reporter.log(self.start_message, 'title')
        runner = self._init_runner()
        compiler = self._find_compiler(compiler)
        compiler = self._prepare_compiler(self.config.common_flags(compiler),
                                          runner)
        tests = self.collect_tests(tests)

        rep = reporter.benchmark_group(self.name, tests)
        output = rep.compilation(
            compiler.add_source(self.config.tester).add_source(
                self.config.source)).compile(out_file=self.config.binary)
        if not output.is_success():
            return False

        for test in tests:
            runner_output = runner.run(self.config,
                                       self.config.benchmark_command(test),
                                       timeout=parse_timeout(test, timeout))
            rep.benchmark(test, runner_output)
            if runner_output.errors or not runner_output.run_successful:
                return False

        return True

    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['benchmarks/*'])
        if not tests:
            no_tests_error(user_tests, ['benchmarks'])
        return tests

    # Hooks to modify the behavior of the command
    start_message = 'Running tests'

    def _init_runner(self) -> Runner:
        return NvprofRunner() if self.config.nvprof else Runner()

    def _find_compiler(self, compiler: Optional[Compiler]) -> Compiler:
        compiler = self.config.find_compiler(
        ) if compiler is None else compiler
        if compiler is None:
            sys.exit("I'm sorry, I could not find a suitable compiler.")
        return compiler

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler


class BenchmarkCommand(BenchmarkCommandBase):
    start_message = 'Running benchmark'

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g')


class AssemblyCommand(Command):
    def collect_tests(self, tests: List[str]) -> List[str]:
        # Assembly command does not use tests
        # TODO: Should we show a warning if passed-in tests is not an empty list?
        return []

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float]) -> bool:
        reporter.log('Compiling to assembly', 'title')
        compiler = self.config.find_compiler(
        ) if compiler is None else compiler
        if compiler is None:
            raise RuntimeError("Could not find a suitable compiler")
        compiler = self.config.common_flags(compiler).add_flag('-O3').add_flag(
            '-S').add_flag('-fverbose-asm')

        rep = reporter.analysis_group('assembly')
        output = rep.compilation(compiler.add_source(
            self.config.source)).compile(out_file=self.config.binary)
        if not output.is_success():
            return False

        assembly = open(self.config.binary, 'r').read()
        if len(assembly.encode('utf-8')) > MAX_ASSEMBLY_OUTPUT:
            assembly = "Generated assembly was too long and wasn't stored"
        rep.analyze(assembly)

        return True


def parse_timeout(file: str, timeout: Optional[float]) -> Optional[float]:
    if timeout:
        return timeout

    first_line = open(file, 'r').readline().split(' ')
    if first_line[0] == "timeout":
        return float(first_line[1])

    return None


def expand_glob(globs: List[str], default: List[str]) -> List[str]:
    """Expand glob of tests, defaulting to default if no globs were provided"""
    if not globs:
        globs = default
    tests = []
    for pattern in globs:
        if os.path.exists(pattern):
            tests.append(pattern)
        else:
            tests.extend(sorted(glob.glob(pattern)))

    return tests


def no_tests_error(orig_tests: List[str], dirs: List[str]):
    if orig_tests:
        quote = '"'
        sys.exit(
            f'The specified tests {", ".join(quote + t + quote for t in orig_tests)} don\'t match any files. '
            + 'Please give a path to test file or a glob expanding to tests')
    else:
        assert len(dirs) > 0
        if len(dirs) == 1:
            its = 'its'
            dir_name = dirs[0]
        else:
            its = 'their'
            dir_name = ', '.join(dirs[:-1]) + ' or ' + dirs[-1]

        sys.exit(
            f'Couldn\'t find default tests. Have you accidentally deleted {dir_name} folder, or {its} contents?'
        )
