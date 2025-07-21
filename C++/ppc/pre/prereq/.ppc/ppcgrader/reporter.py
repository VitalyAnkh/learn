from collections import OrderedDict
from typing import Any, List, Dict, Optional, Union
import json
import sys
import platform

from ppcgrader import BOX_PATH
from ppcgrader.config import Config
from ppcgrader.compiler import Compiler, CompilerOutput, analyze_compile_errors
from ppcgrader.doc_builder import TerminalPrinter, generate_term
from ppcgrader.runner import RunnerOutput, AsanRunnerOutput, MemcheckRunnerOutput, NvprofRunnerOutput
from ppcgrader.profile import generate_derived_statistics, explain_profiling

MAX_RUN_JSON_OUTPUT = 30000  # Characters

WVLA_ERROR = """
  It seems you tried to use Variable Length Arrays. These can lead to crashes
  if the allocated data exceeds the stack size. We have therefore disabled
  them for this course. Consider using a std::vector instead."""[1:]

OMP_TRUE_ERROR = """
  This omp pragma was ignored. Check it for typos if it was meant to be used."""[
    1:]

OMP_FALSE_ERROR = """
  Openmp is disabled for this exercise. The exercise templates for the
  different tasks (e.g CP2a, CP2b CP2c) are different. If you are working on a
  task that requires Openmp, be sure to download the correct exercise
  template: for example CP2b or MF2."""[1:]

ASAN_ASLR_BUG = """
Note: You might have encountered a bug in address sanitizer. You can
try disabling address space layout randomization by running with

setarch -R ./grading ...

More information: https://github.com/google/sanitizers/issues/1614"""[1:]

# TODO use the actual cache line size of the cpu
CACHE_LINE = 64


def bin_fmt(num: int):
    if num < 2 * 1024:
        return f'{num:.2f} '
    elif num < 2 * 1024 * 1024:
        return f'{num/1024/1024:.2f} M'
    else:
        return f'{num/1024/1024/1024:.2f} G'


def table(data: List[Dict[str, Any]], keys: List[str]):
    def to_str(v):
        if v is None:
            return ''
        if isinstance(v, float):
            return f'{v:f}'
        return str(v)

    # Compute field widths
    widths = [len(k) for k in keys]
    for row in data:
        widths = [
            max(w, len(to_str(row.get(k, '')))) for w, k in zip(widths, keys)
        ]

    r = ''
    r += ' | '.join(f"{k:{w}}" for w, k in zip(widths, keys))
    r += '\n'
    r += '-+-'.join("-" * w for w in widths)
    r += '\n'
    for row in data:
        r += ' | '.join(f"{to_str(row.get(k,'')):{w}}"
                        for w, k in zip(widths, keys))
        r += '\n'

    return r


def _safe_json_dump(data):
    return json.dumps(
        json.loads(json.dumps(data), parse_constant=lambda s: str(s)))


class Reporter:
    class RunGroup:
        """
        RunGroup collects the result of a test/benchmark/profile run
        """
        def __init__(self, kind: str):
            assert kind in {"test", "benchmark", "profile"}
            self._kind = kind

        @property
        def kind(self) -> str:
            return self._kind

        def compilation(self,
                        compiler: Compiler) -> 'Reporter.CompilationProxy':
            raise NotImplementedError()

        def result(self, test: str, output: RunnerOutput):
            raise NotImplementedError()

    class AnalysisGroup:
        def compilation(self,
                        compiler: Compiler) -> 'Reporter.CompilationProxy':
            raise NotImplementedError()

        def analyze(self, output, success=True):
            raise NotImplementedError()

    class CompilationProxy:
        def compile(self, *args, **kwargs) -> 'CompilerOutput':
            raise NotImplementedError()

    def __init__(self, config: Config):
        self.config = config

    def test_group(self, name: str, tests: List[str]) -> 'RunGroup':
        raise NotImplementedError()

    def benchmark_group(self, name: str, tests: List[str]) -> 'RunGroup':
        raise NotImplementedError()

    def analysis_group(self, name: str) -> 'AnalysisGroup':
        raise NotImplementedError()

    def log(self, msg: str, kind=None):
        raise NotImplementedError()

    def log_sep(self):
        raise NotImplementedError()

    def finalize(self):
        raise NotImplementedError()


class TerminalReporter(Reporter):
    def check_timeout(self, output: RunnerOutput):
        if not output.is_success():
            self.log_sep()
            if output.is_timed_out():
                self.log('It seems that your program timed out.')
                self.log(
                    f'The test should have ran in less than {output.timeout} seconds.'
                )
                self.log(
                    'You can override allowed running time with --timeout [timeout in seconds] or disable running time checks with --no-timeout.'
                )
            else:
                self.log('It seems that your program crashed unexpectedly.')
            self.log_sep()

    def _simplify_name(self, test: str):
        if self.config.on_remote and test.startswith(BOX_PATH):
            return test[len(BOX_PATH):]
        return test

    def log_nvprof_output(self: 'TerminalReporter',
                          output: NvprofRunnerOutput):
        if output.nvprof:
            if output.nvprof.get('gpu_trace') is not None:

                def safe_scale(value, scale):
                    if value is not None:
                        return value * scale
                    return value

                # Pick and format relevant columns for printing
                t = []
                for row in output.nvprof['gpu_trace']:
                    d = OrderedDict()

                    d['Start (s)'] = row['Start s']
                    d['Duration (s)'] = row['Duration s']
                    if row['Grid X'] and row['Grid Y'] and row['Grid Z']:
                        d['Grid Size'] = f"{row['Grid X']}, {row['Grid Y']}, {row['Grid Z']}"
                    else:
                        d['Grid Size'] = ''
                    if row['Block X'] and row['Block Y'] and row['Block Z']:
                        d['Block Size'] = f"{row['Block X']}, {row['Block Y']}, {row['Block Z']}"
                    else:
                        d['Block Size'] = ''
                    d['Regs'] = row['Registers Per Thread']
                    d['SMem (B)'] = row['Static SMem bytes']
                    d['DMem (B)'] = row['Dynamic SMem bytes']
                    d['Size (MB)'] = safe_scale(row['Size bytes'], 1e-6)
                    d['Throughput (GB/s)'] = safe_scale(
                        row['Throughput bytes/s'], 1e-9)
                    d['Name'] = row['Name']

                    t.append(d)

                if t:
                    self.log_sep()
                    self.log('Nvprof GPU trace:')
                    self.log(table(t, t[0].keys()), 'output')
                    self.log_sep()

            if output.nvprof.get('gpu_trace_message') is not None:
                self.log_sep()
                self.log(output.nvprof['gpu_trace_message'])
                self.log_sep()

        elif output.nvprof_raw:
            self.log_sep()
            self.log('Failed to parse nvprof output. Here it is in raw form:')
            self.log(output.nvprof_raw, 'output')
            self.log_sep()
        else:
            self.log_sep()
            self.log('No output from nvprof')
            self.log_sep()

    def log_asan_output(self: 'TerminalReporter', output: AsanRunnerOutput):
        if output.asanoutput:
            self.log_sep()
            self.log('AddressSanitizer reported the following errors:')
            self.log(output.asanoutput, 'output')
            self.log_sep()

        if platform.system() == 'Linux' and not output.run_successful:
            # Check for ASAN bug with ASLR vm.mmap_rnd_bits=32
            # See https://github.com/google/sanitizers/issues/1614
            # A common symptom seems to be that we get multiple lines of AddressSanitizer:DEADLYSIGNAL
            if "AddressSanitizer:DEADLYSIGNAL\nAddressSanitizer:DEADLYSIGNAL" in output.stderr:
                self.log_sep()
                self.log(ASAN_ASLR_BUG)
                self.log_sep()

    def log_memcheck_output(self: 'TerminalReporter',
                            output: MemcheckRunnerOutput):
        if output.memcheckoutput:
            self.log_sep()
            self.log('Memcheck reported the following errors:')
            self.log(output.memcheckoutput, 'output')
            self.log_sep()

    def print_test_case(self, group: 'RunGroupBase', test: str,
                        output: RunnerOutput):
        width = group.test_name_width
        if not group.header_printed:
            self.log(f'{"test":<{width}}  {"time":>9}  {"result":6}',
                     'heading')
            group.header_printed = True
        if output.is_success():
            msg = "errors" if output.errors else "pass"
            self.log(
                f'{self._simplify_name(test):<{width}}  {output.time:>8.3f}s  {msg:6}',
                'error' if output.errors else 'pass')
        else:
            self.log(f'{self._simplify_name(test):<{width}}  [failed]',
                     'error')

        if output.stdout:
            self.log_sep()
            self.log('Standard output:')
            self.log(output.stdout, 'output')
            self.log_sep()

        if output.stderr:
            self.log_sep()
            self.log('Standard error:')
            self.log(output.stderr, 'output')
            self.log_sep()

        self.check_timeout(output)

    class RunGroupBase(Reporter.RunGroup):
        def __init__(self, reporter: 'TerminalReporter', kind: str,
                     tests: List[str]):
            super().__init__(kind=kind)
            self.reporter = reporter
            self.header_printed = False
            self.test_name_width = max(
                4,
                max(len(self.reporter._simplify_name(test)) for test in tests))

        def compilation(self,
                        compiler: Compiler) -> 'Reporter.CompilationProxy':
            return TerminalReporter.CompilationProxy(self.reporter, compiler)

        def _handle_result(self, test: str, output: RunnerOutput):
            raise NotImplementedError()

        def result(self, test: str, output: RunnerOutput):
            self.reporter.print_test_case(self, test, output)
            self.header_printed = True
            self._handle_result(test, output)

    class TestGroup(RunGroupBase):
        def _handle_result(self, test: str, output: RunnerOutput):
            if isinstance(output, AsanRunnerOutput):
                self.reporter.log_asan_output(output)

            if isinstance(output, MemcheckRunnerOutput):
                self.reporter.log_memcheck_output(output)

            if output.errors and not self.reporter.config.ignore_errors:
                human_readable = self.reporter.config.explain_terminal(
                    output, self.reporter.color)
                if human_readable is not None:
                    self.reporter.log_sep()
                    self.reporter.log(human_readable, 'preformatted')
                    self.reporter.log_sep()

    class BenchmarkGroup(RunGroupBase):
        def _handle_result(self, test: str, output: RunnerOutput):
            if output.is_success() and not output.errors:
                profiling_data = explain_profiling(generate_derived_statistics(
                    output.statistics),
                                                   mode="term")
                simple_printer = TerminalPrinter(color=False)
                human_readable = generate_term(profiling_data, simple_printer)
                self.reporter.log_sep()
                self.reporter.log(human_readable, 'preformatted')
                self.reporter.log_sep()

                if isinstance(output, NvprofRunnerOutput):
                    self.reporter.log_nvprof_output(output)

    class AnalysisGroup(Reporter.AnalysisGroup):
        def __init__(self, name: str, reporter: 'TerminalReporter'):
            self.name = name
            self.reporter = reporter

        def compilation(self,
                        compiler: Compiler) -> 'Reporter.CompilationProxy':
            return TerminalReporter.CompilationProxy(self.reporter, compiler)

        def analyze(self, output, success=True):
            self.reporter.log(f'Output for {self.name}:', 'heading')
            self.reporter.log(output, 'output')

    class CompilationProxy(Reporter.CompilationProxy):
        def __init__(self, reporter: 'TerminalReporter', compiler: Compiler):
            self.reporter = reporter
            self.compiler = compiler

        def compile(self, *args, **kwargs) -> 'CompilerOutput':
            self.reporter.log('Compiling...')
            result = self.compiler.compile(*args, **kwargs)
            if result.stdout:
                self.reporter.log_sep()
                self.reporter.log('Compiler stdout:')
                self.reporter.log(result.stdout, 'output')
                self.reporter.log_sep()
            if result.stderr:
                self.reporter.log_sep()
                self.reporter.log('Compiler stderr:')
                self.reporter.log(result.stderr, 'output')
                self.reporter.log_sep()
            if result.is_success():
                self.reporter.log('Compiled')
            else:
                self.reporter.log('Compilation failed!', 'error')
                self.reporter.log_sep()

            self.print_errors(result.stderr)

            return result

        def print_errors(self, stderr: str):
            errors = analyze_compile_errors(stderr)
            lines = stderr.splitlines()
            for error in errors:
                if error['type'] == "Wvla":
                    self.reporter.log(lines[error['line']], 'error')
                    self.print_context(lines, error['line'])
                    self.reporter.log_sep()
                    self.reporter.log(WVLA_ERROR, 'output')
                    self.reporter.log_sep()
                elif error['type'] == "omp":
                    self.reporter.log(lines[error['line']], 'error')
                    self.print_context(lines, error['line'])
                    self.reporter.log_sep()
                    if self.reporter.config.openmp:
                        self.reporter.log(OMP_TRUE_ERROR, 'output')
                    else:
                        self.reporter.log(OMP_FALSE_ERROR, 'output')
                    self.reporter.log_sep()

        def print_context(self, error_lines: List[str], error_index: int):
            """
            Given a list of lines that are the output of the compiler, and
            an index into this list that points to the start of a specific error
            message, this function attempts to print the entire context of the
            error, i.e., it will print the lines *following* `error_index`
            until it reaches a line that does not start with whitespace, i.e.
            is not indented.
            :param error_lines: List of lines in the compiler output
            :param error_index: Index into that list
            """
            for i in range(error_index + 1, len(error_lines)):
                if error_lines[i][0].isspace():
                    self.reporter.log(error_lines[i], 'output')
                else:
                    break

    def __init__(self, config: Config, color: Optional[bool] = None):
        super().__init__(config)
        self.color = sys.stdout.isatty() if color is None else color
        self.sep_printed = False

    def test_group(self, name: str, tests: List[str]) -> 'TestGroup':
        return TerminalReporter.TestGroup(self, 'test', tests)

    def benchmark_group(self, name: str, tests: List[str]) -> 'BenchmarkGroup':
        return TerminalReporter.BenchmarkGroup(self, 'benchmark', tests)

    def analysis_group(self, name: str) -> 'AnalysisGroup':
        return TerminalReporter.AnalysisGroup(name, self)

    def log_sep(self):
        if not self.sep_printed:
            print()
            self.sep_printed = True

    def log(self, msg: str, kind=None):
        msg = msg.rstrip()
        before, after = '', ''
        if kind is not None and self.color:
            reset = '\033[0m'
            before, after = {
                'title': ('\033[34;1m', reset),
                'heading': ('\033[1m', reset),
                'error': ('\033[31;1m', reset),
                'pass': ('\033[34m', reset),
                'command': ('\033[34m', reset),
                'output': ('\033[34m', reset),
            }.get(kind, ('', ''))
        print(before + msg + after)
        self.sep_printed = False

    def finalize(self):
        pass


def limit_output_for_json(output: Optional[str]) -> Optional[str]:
    """Limit the output to roughly MAX_RUN_JSON_OUTPUT characters.

    Note that the output may be up to 3 characters or 7 bytes longer than the
    limit because of the added ellipsis."""
    if output is None:
        return None
    if len(output) < MAX_RUN_JSON_OUTPUT:
        return output
    # Output too long. Try to cut it at a line break
    output = output[:MAX_RUN_JSON_OUTPUT]
    last_line_break = output.rfind("\n")
    if last_line_break == -1:
        # Output doesn't contain any line breaks. So just add ellipsis
        # at the end, and another on the next line
        return output + "…\n…"
    if last_line_break < MAX_RUN_JSON_OUTPUT - MAX_RUN_JSON_OUTPUT / 10:
        # Let's not remove over 10% of the students output. Again,
        # just add the ellipsis at the end of the line
        return output + "…\n…"
    # Okay, found a sensible place to add a break.
    return output[:last_line_break] + "\n…"


def output_to_json(test: str, output: RunnerOutput, benchmark: bool,
                   export_streams: bool) -> Dict[str, str]:
    result = {
        'name': test,
        'test': open(test, 'r').read(),
        'success': output.is_success(),
    }
    if output.is_success():
        result['time'] = output.time
        result['errors'] = output.errors
        if output.errors:
            result['input'] = output.input_data
            result['output'] = output.output_data
            result['output_errors'] = output.output_errors
        if benchmark:
            result['statistics'] = output.statistics
    else:
        result['timed_out'] = output.is_timed_out()
    if isinstance(output, AsanRunnerOutput):
        result['asanoutput'] = limit_output_for_json(output.asanoutput)
    if isinstance(output, MemcheckRunnerOutput):
        result['memcheckoutput'] = limit_output_for_json(output.memcheckoutput)
    if isinstance(output, NvprofRunnerOutput):
        result['nvprof'] = output.nvprof
    if export_streams:
        result['stdout'] = limit_output_for_json(output.stdout)
        result['stderr'] = limit_output_for_json(output.stderr)
    return result


def json_to_output(raw: dict):
    cls = RunnerOutput
    args = {}
    if 'asanoutput' in raw:
        cls = AsanRunnerOutput
        args['asanoutput'] = raw['asanoutput']
    if 'memcheckoutput' in raw:
        cls = MemcheckRunnerOutput
        args['memcheckoutput'] = raw['memcheckoutput']
    if 'nvprof' in raw:
        cls = NvprofRunnerOutput
        args['nvprof_raw'] = ''
        args['nvprof'] = raw['nvprof']

    return cls(run_successful=raw['success'],
               timed_out=raw.get('timed_out', False),
               stdout=raw.get('stdout', ''),
               stderr=raw.get('stderr', ''),
               time=raw.get('time', None),
               timeout=None,
               errors=raw.get('errors', None),
               input_data=raw.get('input', None),
               output_data=raw.get('output', None),
               output_errors=raw.get('output_errors', None),
               statistics=raw.get('statistics', None),
               **args)


class JsonReporter(Reporter):
    class RunGroup(Reporter.RunGroup):
        def __init__(self, reporter: 'JsonReporter', kind: str, name: str):
            super().__init__(kind=kind)
            self.reporter = reporter
            self.name = name
            self.compiler_output = None
            self.outputs = []

        def compilation(self,
                        compiler: Compiler) -> 'Reporter.CompilationProxy':
            if self.compiler_output is not None:
                raise RuntimeError('Must not compiler code twice in group')
            self.compiler_output = {}
            return JsonReporter.CompilationProxy(self.compiler_output,
                                                 compiler)

        def result(self, test: str, output: RunnerOutput):
            self.outputs.append(
                output_to_json(test, output, self.kind == "benchmark",
                               self.reporter.config.export_streams))

        def is_success(self):
            if not self.compiler_output:
                return False

            return self.compiler_output['status'] == 0 and all(
                test['success'] and test['errors'] == 0
                for test in self.outputs)

        def to_json(self):
            return {
                'name': self.name,
                'compiler_output': self.compiler_output,
                f'{self.kind}s': self.outputs,
            }

    class AnalysisGroup(Reporter.AnalysisGroup):
        def __init__(self, name: str):
            self.name = name
            self.compiler_output = None
            self.output = None
            self.success = False

        def compilation(self,
                        compiler: Compiler) -> 'Reporter.CompilationProxy':
            if self.compiler_output is not None:
                raise RuntimeError(
                    'Must not compiler code twice in analysis group')
            self.compiler_output = {}
            return JsonReporter.CompilationProxy(self.compiler_output,
                                                 compiler)

        def analyze(self, output, success=True):
            if self.output is not None:
                raise RuntimeError('Analysis must be recorded only once')
            self.output = output

        def is_success(self):
            return self.success

        def to_json(self):
            return {
                'name': self.name,
                'compiler_output': self.compiler_output,
                'output': self.output,
                'success': self.success,
            }

    class CompilationProxy(Reporter.CompilationProxy):
        def __init__(self, output: Dict[str, Union[str, int, list]],
                     compiler: Compiler):
            self.output = output
            self.compiler = compiler

        def compile(self, *args, **kwargs) -> 'CompilerOutput':
            result = self.compiler.compile(*args, **kwargs)
            self.output['status'] = result.returncode
            self.output['stdout'] = result.stdout
            self.output['stderr'] = result.stderr
            errors = analyze_compile_errors(result.stderr)
            self.output['errors'] = errors
            return result

    def __init__(self, config: Config):
        super().__init__(config)
        self.test_groups = []
        self.benchmark_groups = []
        self.analysis_groups = []

    def test_group(self, name: str, tests: List[str]) -> 'RunGroup':
        group = JsonReporter.RunGroup(self, 'test', name)
        self.test_groups.append(group)
        return group

    def benchmark_group(self, name: str, tests: List[str]) -> 'RunGroup':
        group = JsonReporter.RunGroup(self, 'benchmark', name)
        self.benchmark_groups.append(group)
        return group

    def analysis_group(self, name: str) -> 'AnalysisGroup':
        group = JsonReporter.AnalysisGroup(name)
        self.analysis_groups.append(group)
        return group

    def log(self, msg: str, kind=None):
        pass  # No logging with json output

    def log_sep(self):
        pass  # No logging with json output

    def finalize(self):
        print(_safe_json_dump(self.to_json()))

    def to_json(self):
        return {
            'success':
            all(group.is_success() for group in self.test_groups)
            and all(group.is_success() for group in self.benchmark_groups)
            and all(group.is_success() for group in self.analysis_groups),
            'tests': [group.to_json() for group in self.test_groups],
            'benchmarks': [group.to_json() for group in self.benchmark_groups],
            'analyses': [group.to_json() for group in self.analysis_groups],
        }
