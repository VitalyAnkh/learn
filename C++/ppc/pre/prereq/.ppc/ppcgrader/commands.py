import subprocess
from pathlib import Path
from typing import List, Optional
import glob
import os
import sys

from ppcgrader.config import Config
from ppcgrader.runner import Runner, AsanRunner, TsanRunner, MemcheckRunner, NvprofRunner
from ppcgrader.compiler import Compiler, GccCompiler, ClangCompiler, NvccCompiler, find_gcc_compiler, find_clang_compiler
from ppcgrader.reporter import Reporter

MAX_ASSEMBLY_OUTPUT = 600000  # Bytes


class CommandFlavor:
    CPU = "cpu"
    GPU = "gpu"
    ANY = "any"


class Command:
    # specifies the name of this command for the CLI
    name: str
    # specifies the help text for the command
    help: str
    # specifies for which type of exercise the command is valid
    flavor: str = CommandFlavor.ANY
    # specifies whether this command can be used with the --remote flag
    allow_remote: bool = True

    def __init__(self, config: Config):
        self.config = config

    def collect_tests(self, tests: List[str]) -> List[str]:
        raise NotImplementedError

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        raise NotImplementedError

    def _find_compiler(self, compiler: Optional[Compiler]) -> Compiler:
        compiler = self.config.find_compiler(
        ) if compiler is None else compiler
        if compiler is None:
            sys.exit("I'm sorry, I could not find a suitable compiler.")
        return compiler

    def query_timeout(self, tests: List[str], timeout: Optional[float],
                      no_timeout: Optional[bool]) -> float:
        """
        Queries the total timeout of this command, without actually running anything.
        Total timeout includes compilation time and the time to run all test cases.
        If there is no timeout, infinity is returned
        """
        raise NotImplementedError()


class CompileAndRunCommandBase(Command):
    def collect_tests(self, user_tests: List[str]) -> List[str]:
        raise NotImplementedError()

    def query_timeout(self, tests: List[str], timeout: Optional[float],
                      no_timeout: Optional[bool]) -> float:
        # 10s additional timeout for compilation
        return compile_timeout(10, no_timeout) + timeout_for_test_set(
            self.collect_tests(tests), timeout, no_timeout, self.extra_timeout)

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler

    start_message: str
    extra_timeout = 0.0


class TestCommandBase(CompileAndRunCommandBase):
    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['tests/*', 'benchmarks/*'])
        if not tests:
            no_tests_error(user_tests, ['tests', 'benchmarks'])
        return tests

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        reporter.log(self.start_message, 'title')
        compiler = self._find_compiler(compiler)
        return self._exec_rest(compiler, reporter, tests, timeout, no_timeout)

    def _exec_rest(self, compiler: Optional[Compiler], reporter: Reporter,
                   tests: List[str], timeout: Optional[float],
                   no_timeout: Optional[bool]) -> bool:
        """Run the rest of exec()

        This split makes it so TestUninitCommand._find_compiler() can print
        errors on sys.exit() after the title is printed to the reporter.
        """
        runner = self._init_runner()
        compiler = self._prepare_compiler(self.config.common_flags(compiler),
                                          runner)
        tests = self.collect_tests(tests)

        rep = reporter.test_group(self.name, tests)
        output = rep.compilation(
            compiler.add_source(self.config.tester).add_source(
                self.config.source)).compile(out_file=self.config.binary,
                                             timeout=compile_timeout(
                                                 10, no_timeout))
        if not output.is_success():
            return False

        for test in tests:
            runner_output = runner.run(self.config,
                                       self.config.test_command(test),
                                       timeout=parse_timeout(
                                           test, timeout, no_timeout,
                                           self.extra_timeout))
            rep.result(test, runner_output)
            if not self.config.ignore_errors:
                if runner_output.errors or not runner_output.run_successful:
                    return False

        return True

    # Hooks to modify the behavior of the command
    start_message = 'Running tests'

    def _init_runner(self) -> Runner:
        return Runner()


class SmallTestCommandBase(TestCommandBase):
    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['tests/*'])
        if not tests:
            no_tests_error(user_tests, ['tests'])
        return tests


class TestPlainCommand(TestCommandBase):
    start_message = 'Running tests'
    name = 'test-plain'
    help = 'run tests without any sanitizers'

    def _prepare_compiler(self, compiler: Compiler,
                          runner: AsanRunner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g')


class TestAsanCommand(SmallTestCommandBase):
    start_message = 'Running tests with address sanitizer'
    name = 'test-asan'
    help = 'run tests with address sanitizer'

    def _init_runner(self) -> Runner:
        return AsanRunner()

    def _prepare_compiler(self, compiler: Compiler,
                          runner: AsanRunner) -> Compiler:
        # -Og enables "debugging" optimizations, i.e., optimizations that are not expected to interfere with
        # debuggability; but we get at least some speedup so these don't run forever.
        # -fno-omit-frame-pointer and -fno-common are suggested by asan:
        # https://github.com/google/sanitizers/wiki/AddressSanitizerFlags
        options = [
            '-fsanitize=address',
            '-fsanitize=undefined',
            '-fno-omit-frame-pointer',
            '-fno-common',
            '-Og',
        ]
        if isinstance(compiler, NvccCompiler):
            options = sum((['-Xcompiler', f'"{o}"'] for o in options), [])
            runner.env[
                'ASAN_OPTIONS'] = 'protect_shadow_gap=0:replace_intrin=0:detect_leaks=0'

        compiler = compiler.add_flag(*options)
        compiler = compiler.add_flag('-g').add_definition(
            '_GLIBCXX_SANITIZE_VECTOR', '1')
        return compiler


class TestMemcheckCommandBase(TestCommandBase):
    flavor = CommandFlavor.GPU
    extra_timeout = 1.0

    def __init__(self, config: Config, tool: str):
        self.tool = tool
        super().__init__(config)

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
    name = 'test-memcheck-memcheck'
    help = 'run tests and check for memory access errors and leaks'

    def __init__(self, config: Config):
        super().__init__(config, tool='memcheck')


class TestRacecheckCommand(TestMemcheckCommandBase):
    name = 'test-memcheck-racecheck'
    help = 'run tests and check for shared memory race conditions'

    def __init__(self, config: Config):
        super().__init__(config, tool='racecheck')


class TestInitcheckCommand(TestMemcheckCommandBase):
    name = 'test-memcheck-initcheck'
    help = 'run tests and check for uninitialized memory accesses'

    def __init__(self, config: Config):
        super().__init__(config, tool='initcheck')


class TestSynccheckCommand(TestMemcheckCommandBase):
    name = 'test-memcheck-synccheck'
    help = 'run tests and check for thread synchronization errors'

    def __init__(self, config: Config):
        super().__init__(config, tool='synccheck')


class TestUninitCommand(TestCommandBase):
    start_message = 'Running tests with uninitialized variable check'
    name = 'test-uninit'
    help = 'run tests with automatic stack variables initialized'
    flavor = CommandFlavor.CPU

    def _gcc_check(self, compiler: Optional[Compiler]) -> bool:
        if isinstance(compiler, GccCompiler):
            return compiler.version[0] >= 12

    def _clang_check(self, compiler: Optional[Compiler]) -> bool:
        if isinstance(compiler, ClangCompiler):
            return compiler.version[0] >= 8

    def _find_compiler(self,
                       compiler: Optional[Compiler]) -> Optional[Compiler]:
        """Find a compiler that supports trivial-auto-var-pattern.

        If the given compiler is None look first for a suitable GCC and after
        that for a suitable Clang compiler. If the compiler was given, perhaps
        with --gcc or --clang flag check if the compiler is compatible.
        """

        # Check if we have any suitable compiler. This function calls
        # sys.exit() if no compiler is found.
        super()._find_compiler(None)

        if compiler is None:
            compiler = find_gcc_compiler()
            if self._gcc_check(compiler):
                return compiler
            compiler = find_clang_compiler()
            if self._clang_check(compiler):
                return compiler
        else:
            if self._gcc_check(compiler):
                return compiler
            if self._clang_check(compiler):
                return compiler

        # No test-uninit compatible compiler was found
        return None

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g').add_flag(
            '-ftrivial-auto-var-init=pattern')

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        reporter.log(self.start_message, 'title')
        compiler_out = self._find_compiler(compiler)
        # check if no compatible compiler was found
        if compiler_out is None:
            reporter.log(
                f"The compiler {'' if compiler is None else str(compiler) + ' '}is too old",
                'error')
            reporter.log(
                "Running test-uninit requires g++ version >= 12 or clang++ version >= 8",
                'msg')
            # skip if not running remotely
            if not self.config.on_remote:
                reporter.log(
                    "Install a newer compiler or run test-uninit remotely using '--remote'",
                    'msg')
                return True
            if self.config.ignore_errors:
                return True
            else:
                return False
        else:
            return super()._exec_rest(compiler_out, reporter, tests, timeout,
                                      no_timeout)


class BenchmarkCommandBase(CompileAndRunCommandBase):
    measure: str

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        reporter.log(self.start_message, 'title')
        runner = self._init_runner()
        compiler = self._find_compiler(compiler)
        compiler = self._prepare_compiler(self.config.common_flags(compiler),
                                          runner)
        tests = self.collect_tests(tests)

        rep = reporter.benchmark_group(self.name, tests)
        output = rep.compilation(
            compiler.add_source(self.config.tester).add_source(
                self.config.source)).compile(out_file=self.config.binary,
                                             timeout=compile_timeout(
                                                 10, no_timeout))
        if not output.is_success():
            return False

        for test in tests:
            runner_output = runner.run(self.config,
                                       self.config.benchmark_command(test),
                                       timeout=parse_timeout(
                                           test, timeout, no_timeout,
                                           self.extra_timeout),
                                       measure=self.measure)
            rep.result(test, runner_output)
            if not self.config.ignore_errors:
                if runner_output.errors or not runner_output.run_successful:
                    return False

        return True

    def collect_tests(self, user_tests: List[str]) -> List[str]:
        tests = expand_glob(user_tests, ['benchmarks/*'])
        if not tests:
            no_tests_error(user_tests, ['benchmarks'])
        return tests

    # Hooks to modify the behavior of the command
    start_message = 'Running benchmark'

    def _init_runner(self) -> Runner:
        return NvprofRunner() if self.config.nvprof else Runner()


class BenchmarkCommand(BenchmarkCommandBase):
    start_message = 'Running benchmark'
    name = 'benchmark-all'
    help = 'run benchmarks'

    def __init__(self, config: Config):
        super().__init__(config)
        self.measure = "default"

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g')


class BenchmarkCacheCommand(BenchmarkCommandBase):
    start_message = 'Running benchmark'
    name = 'benchmark-cache'
    help = 'run benchmarks and record cache measurements'

    def __init__(self, config: Config):
        super().__init__(config)
        self.measure = "cache"

    def _prepare_compiler(self, compiler: Compiler,
                          runner: Runner) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g')


class AssemblyCommandBase(Command):
    def collect_tests(self, tests: List[str]) -> List[str]:
        # Assembly command does not use tests
        # TODO: Should we show a warning if passed-in tests is not an empty list?
        return []

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        reporter.log('Compiling to assembly', 'title')
        compiler = self._find_compiler(compiler)
        compiler = self._set_compile_flags(compiler)

        rep = reporter.analysis_group(self.name)
        output = rep.compilation(compiler.add_source(
            self.config.source)).compile(out_file=self.config.binary,
                                         timeout=compile_timeout(
                                             timeout, no_timeout))
        if not output.is_success():
            return False

        assembly = self._extract_assembly()
        if len(assembly.encode('utf-8')) > MAX_ASSEMBLY_OUTPUT:
            assembly = "Generated assembly was too long and wasn't stored"
        rep.analyze(assembly)

        return True

    def _extract_assembly(self) -> str:
        return Path(self.config.binary).read_text()

    def _set_compile_flags(self, compiler: Compiler) -> Compiler:
        raise NotImplementedError()

    def query_timeout(self, tests: List[str], timeout: Optional[float],
                      no_timeout: Optional[bool]) -> float:
        return compile_timeout(timeout, no_timeout)


class AssemblyCPUCommand(AssemblyCommandBase):
    name = 'assembly'
    help = 'generate assembly'

    def _set_compile_flags(self, compiler: Compiler) -> Compiler:
        if isinstance(compiler, NvccCompiler):
            # -c tells nvcc to just do the host compile; then we can send the standard asm
            # operations to the host compiler
            return self.config.common_flags(compiler).add_flag(
                '-c', '-Xcompiler', '-O3', '-Xcompiler', '-S', '-Xcompiler',
                '-fverbose-asm')
        else:
            return self.config.common_flags(compiler).add_flag(
                '-O3', '-S', '-fverbose-asm')

    def _extract_assembly(self) -> str:
        raw = Path(self.config.binary).read_text()
        if self.config.gpu:
            filtered = []
            keep = True
            for line in raw.splitlines():
                # skip all lines in the .fatbin section for cuda
                # host-side assembly
                if not keep:
                    if line.startswith('.quad'):
                        continue
                keep = True
                filtered.append(line)
                if line.startswith('fatbinData:'):
                    filtered.append('# [...] omitted')
                    keep = False

            return '\n'.join(filtered)
        else:
            return raw


class AssemblyPTXCommand(AssemblyCommandBase):
    name = 'assembly-ptx'
    help = 'generate ptx assembly for GPU kernels'

    def _set_compile_flags(self, compiler: Compiler) -> Compiler:
        return self.config.common_flags(compiler).add_flag(
            '-ptx', '-lineinfo', '-src-in-ptx')


class AssemblySASSCommand(AssemblyCommandBase):
    name = 'assembly-sass'
    help = 'generate sass assembly for GPU kernels'

    def _set_compile_flags(self, compiler: Compiler) -> Compiler:
        return self.config.common_flags(compiler).add_flag('-cubin')

    def _extract_assembly(self) -> str:
        # --no-vliw: Conventional mode; disassemble paired instructions in normal syntax
        args = [
            "nvdisasm", "--life-range-mode", "count", "--no-vliw",
            self.config.binary
        ]
        return subprocess.check_output(args, encoding="utf-8")


class CompileCommandBase(Command):
    def collect_tests(self, tests: List[str]) -> List[str]:
        # Same as with the Assembly command
        # TODO: Should we show a warning if passed-in tests is not an empty list?
        return []

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        reporter.log(self.start_message, 'title')
        compiler = self._find_compiler(compiler)
        compiler = self._prepare_compiler(self.config.common_flags(compiler))
        rep = reporter.analysis_group('binary')
        output = rep.compilation(
            compiler.add_source(self.config.tester).add_source(
                self.config.source)).compile(out_file=self.config.binary,
                                             timeout=compile_timeout(
                                                 10, no_timeout))
        if not output.is_success():
            return False

        return True

    def query_timeout(self, tests: List[str], timeout: Optional[float],
                      no_timeout: Optional[bool]) -> float:
        return compile_timeout(timeout, no_timeout)

    # Hooks to modify the behavior of the command
    start_message = 'Compiling binary'

    def _prepare_compiler(self, compiler: Compiler) -> Compiler:
        return compiler


class CompileCommand(CompileCommandBase):
    start_message = 'Compiling binary with optimizations'
    name = 'compile'
    help = 'compile a binary with full optimizations for profiling'

    def _prepare_compiler(self, compiler: Compiler) -> Compiler:
        return compiler.add_flag('-O3').add_flag('-g')


class DemoCommandBase(Command):
    allow_remote = False

    def exec(self, compiler: Optional[Compiler], reporter: Reporter,
             tests: List[str], timeout: Optional[float],
             no_timeout: Optional[bool]) -> bool:
        if self.config.demo is None:
            reporter.log("Sorry, this exercise does not provide a demo.",
                         'title')
            return False

        reporter.log("Compiling demo executable", 'title')
        # adjust compiler for demo
        compiler = self._find_compiler(compiler)
        compiler = self.config.demo_flags(compiler)
        compiler = compiler.add_source(self.config.demo).add_source(
            self.config.source)
        rep = reporter.test_group('demo', [""])
        output = rep.compilation(compiler).compile(
            out_file=self.config.demo_binary,
            timeout=compile_timeout(10, no_timeout))

        if not output.is_success():
            return False

        return self.run_demo(reporter, tests, timeout, no_timeout)

    def run_demo(self, reporter: Reporter, args: List[str],
                 timeout: Optional[float], no_timeout: Optional[bool]) -> bool:
        pass


class CompileDemoCommand(DemoCommandBase):
    name = 'compile-demo'
    help = 'compile a demo binary that showcases the implemented function'

    def run_demo(self, reporter: Reporter, args: List[str],
                 timeout: Optional[float], no_timeout: Optional[bool]) -> bool:
        return True

    def query_timeout(self, tests: List[str], timeout: Optional[float],
                      no_timeout: Optional[bool]) -> float:
        return 10


class RunDemoCommand(CompileDemoCommand):
    name = 'demo'
    help = 'runs a demo to showcase the implemented function'

    def run_demo(self, reporter: Reporter, args: List[str],
                 timeout: Optional[float], no_timeout: Optional[bool]) -> bool:
        reporter.log_sep()
        reporter.log("Running demo", 'title')
        cmd = self.config.demo_command(args)
        reporter.log(" ".join(cmd), 'output')
        reporter.log_sep()
        try:
            output = subprocess.check_output(cmd, timeout=timeout)
            self.config.demo_post(output.decode('utf-8'), reporter)
            return True
        except subprocess.CalledProcessError as error:
            reporter.log(f"demo returned with error code {error.returncode}",
                         'error')
            reporter.log(f"Output was:", 'heading')
            reporter.log(error.output.decode('utf-8'), 'output')

    def query_timeout(self, tests: List[str], timeout: Optional[float],
                      no_timeout: Optional[bool]) -> float:
        # 10s additional timeout for compilation
        if timeout:
            return 10 + timeout
        else:
            return float("inf")


class CompileDebugCommand(CompileCommandBase):
    start_message = 'Compiling binary without optimizations'
    name = 'compile-debug'
    help = 'compile a binary without optimization for debugging'

    def _prepare_compiler(self, compiler: Compiler) -> Compiler:
        return compiler.add_flag('-g')


def parse_timeout(file: str,
                  timeout: Optional[float],
                  no_timeout: Optional[bool],
                  extra_timeout: Optional[float] = None) -> Optional[float]:
    """
    Picks an adequate timeout according to the following priorities:
    1) If `no_timeout` is set, `None` is returned.
    2) If an explicit `timeout` override is given, that value is used.
    3) Otherwise, an attempt is made to read the timeout from the provided file.
       `extra_timeout` is added to the value in the file if given.
    4) If no timeout is provided in the file, `None` is returned.
    """
    if no_timeout:
        return None

    if timeout:
        return timeout

    first_line = open(file, 'r').readline().split(' ')
    if first_line[0] == "timeout":
        if extra_timeout is not None:
            return float(first_line[1]) + extra_timeout
        else:
            return float(first_line[1])
    return None


def timeout_for_test_set(files: List[str], timeout: Optional[float],
                         no_timeout: Optional[bool],
                         extra_timeout: float) -> float:
    total_timeout = 0
    for test in files:
        test_timeout = parse_timeout(test, timeout, no_timeout, extra_timeout)
        if test_timeout is not None:
            total_timeout += test_timeout
        else:
            return float("inf")
    return total_timeout


def compile_timeout(timeout: float, no_timeout: Optional[bool]) -> float:
    if no_timeout:
        return float("inf")
    if timeout:
        return timeout
    return 10


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


COMMANDS = [
    AssemblyCPUCommand,
    AssemblyPTXCommand,
    AssemblySASSCommand,
    CompileCommand,
    CompileDebugCommand,
    CompileDemoCommand,
    RunDemoCommand,
    TestAsanCommand,
    TestUninitCommand,
    TestPlainCommand,
    BenchmarkCommand,
    BenchmarkCacheCommand,
    TestMemcheckCommand,
    TestRacecheckCommand,
    TestInitcheckCommand,
    TestSynccheckCommand,
]
