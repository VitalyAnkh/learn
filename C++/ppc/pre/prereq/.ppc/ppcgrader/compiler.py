import math
import subprocess
from typing import List, Optional, Dict, Union
import re
import copy
from ppcgrader.logging import log_command
import platform
import sys

MAX_COMPILER_OUTPUT = 30000  # Characters
MIN_GCC, MAX_GCC = 8, 15
MIN_CLANG, MAX_CLANG = 6, 20

GCC_BINARIES = ['g++'] + [f"g++-{v}" for v in range(MIN_GCC, MAX_GCC + 1)]
CLANG_BINARIES = ['clang++'] + \
    [f"clang++-{v}" for v in range(MIN_CLANG, MAX_CLANG + 1)]
NVCC_BINARIES = ['nvcc']


class CompilerOutput:
    def __init__(self, stdout: str, stderr: str, returncode: int):
        self.stdout = stdout
        self.stderr = stderr
        self.returncode = returncode

    def is_success(self) -> bool:
        return self.returncode == 0


def _check_vla_error(text: str) -> bool:
    # [-Werror=vla] is for gcc, the other for clang
    return "[-Werror=vla]" in text or "[-Werror,-Wvla-extension]" in text


def _check_omp_pragma_error(text: str) -> bool:
    return "[-Wunknown-pragmas]" in text and "omp" in text


def analyze_compile_errors(stderr: str) -> List[Dict[str, Union[str, int]]]:
    errors = []
    lines = stderr.splitlines()
    for i in range(len(lines)):
        if _check_vla_error(lines[i]):
            errors.append({
                'type': 'Wvla',
                'line': i,
            })
        if _check_omp_pragma_error(lines[i]):
            errors.append({
                'type': 'omp',
                'line': i,
            })
    return errors


class Compiler:
    def __init__(self, program: str, common_flags: List[str]):
        self.sources = []
        self.flags = []
        self.libs = []
        self.program = program
        self.common_flags = common_flags

    def add_source(self, file: str) -> 'Compiler':
        me = copy.deepcopy(self)
        me.sources.append(file)
        return me

    def add_library(self, lib: str) -> 'Compiler':
        me = copy.deepcopy(self)
        if not lib.startswith("-l"):
            lib = f"-l{lib}"
        me.libs.append(lib)
        return me

    def add_flag(self, *flags: str) -> 'Compiler':
        me = copy.deepcopy(self)
        me.flags.extend(flags)
        return me

    def add_omp_flags(self) -> 'Compiler':
        return self.add_flag('-fopenmp')

    def add_definition(self, name: str, value: Optional = None) -> 'Compiler':
        """
        Adds a preprocessor definition to the compiler arguments.
        :param name: Name of the macro to define
        :param value: Value to assign to the macro. Can be None, in which case the macro is defined without a value.
        """
        if value is None:
            return self.add_flag(f'-D{name}')
        else:
            return self.add_flag(f'-D{name}={value}')

    def compile_command(self, out_file: str = 'a.out') -> List[str]:
        return [self.program
                ] + self.common_flags + self.flags + self.sources + [
                    '-o', out_file
                ] + self.libs

    def compile(self,
                out_file: str = 'a.out',
                timeout: float = 10) -> CompilerOutput:
        args = self.compile_command(out_file)
        logged = log_command(args)
        # subprocess.run cannot handle infinite timeouts, needs explicit None
        if timeout is None or not math.isfinite(timeout):
            timeout = None

        try:
            result = subprocess.run(args,
                                    timeout=timeout,
                                    stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE,
                                    encoding='utf-8',
                                    errors='utf-8')
            output = CompilerOutput(result.stdout[:MAX_COMPILER_OUTPUT],
                                    result.stderr[:MAX_COMPILER_OUTPUT],
                                    result.returncode)
        except subprocess.TimeoutExpired:
            output = CompilerOutput(
                '',
                f'Compilation process took longer than {timeout}s, killed the process',
                -1)

        if not logged and not output.is_success():
            log_command(args, 0)

        return output

    def is_valid(self, args: Optional[List[str]] = None) -> bool:
        try:
            args = args if args else [
                self.program, '-dM', '-fopenmp', '-E', '-'
            ]
            log_command(args, 2)
            return subprocess.run(args,
                                  input='',
                                  timeout=10,
                                  stdout=subprocess.PIPE,
                                  stderr=subprocess.PIPE,
                                  encoding='utf-8',
                                  errors='utf-8').returncode == 0
        except AssertionError:
            return False
        except FileNotFoundError:
            sys.exit(f'''Program {self.program} not found.
Check that the compiler is installed and in your PATH:

    which {self.program}

or

    {self.program} --version
''')
        except PermissionError:
            sys.exit(f'''Unable to execute {self.program}.
Check that the compiler is working by, for example, running:

    {self.program} --version
 ''')
        except subprocess.TimeoutExpired:
            sys.exit(
                'Testing compiler took too much time, killed the process.')

    def __str__(self):
        return self.program


class GccCompiler(Compiler):
    def __init__(self, program: str = 'g++'):
        self.version = GccCompiler.__get_version(program)

        super().__init__(program=program,
                         common_flags=[
                             '-std=c++2a',
                             '-Wall',
                             '-Wextra',
                             '-Wvla',
                             '-Werror',
                             '-Wno-error=unknown-pragmas',
                             '-Wno-error=unused-but-set-variable',
                             '-Wno-error=unused-local-typedefs',
                             '-Wno-error=unused-function',
                             '-Wno-error=unused-label',
                             '-Wno-error=unused-value',
                             '-Wno-error=unused-variable',
                             '-Wno-error=unused-parameter',
                             '-Wno-error=unused-but-set-parameter',
                             '-Wno-psabi',
                             '-march=native',
                             '-fdiagnostics-color=never',
                         ])

    @staticmethod
    def __get_version(program: str):
        try:
            # currently the arm version of gcc from homebrew doesn't come with libasan and libubsan in which case we don't want to choose gcc
            if platform.system() == 'Darwin' and platform.machine() == 'arm64':
                args = [
                    program, '-xc++', '-fsanitize=address',
                    '-fsanitize=undefined', '-', '-o', '/dev/null'
                ]
                log_command(args, 2)
                assert (subprocess.run(args,
                                       timeout=10,
                                       input="int main() { } ",
                                       text=True,
                                       stdout=subprocess.PIPE,
                                       stderr=subprocess.PIPE).returncode == 0)

            args = [program, '-dM', '-fopenmp', '-E', '-']
            log_command(args, 2)
            output = subprocess.run(args,
                                    input='',
                                    timeout=10,
                                    stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE,
                                    encoding='utf-8',
                                    errors='utf-8')
            if output.returncode == 0:
                lines = output.stdout.split('\n')
                matches = [
                    re.match('^#define (\\w+) (.*)$', line) for line in lines
                ]
                macros = {
                    match.group(1): match.group(2)
                    for match in matches if match is not None
                }

                if '__clang__' not in macros and '_OPENMP' in macros:
                    # We don't want to choose clang in any case
                    try:
                        return (int(macros['__GNUC__']),
                                int(macros['__GNUC_MINOR__']),
                                int(macros['__GNUC_PATCHLEVEL__']))
                    except TypeError:
                        pass

        except FileNotFoundError:
            pass
        except AssertionError:
            pass
        except PermissionError:
            pass

        return None

    def __repr__(self):
        return f'GCC compiler ({self.program})'


class ClangCompiler(Compiler):
    def __init__(self, program: str = 'clang++'):
        self.version, self.apple = ClangCompiler.__get_version(program)

        flags = [
            '-std=c++2a',
            '-Wall',
            '-Wextra',
            '-Wvla',
            '-Werror',
            '-Wno-unknown-warning-option',
            '-Wno-error=unknown-pragmas',
            '-Wno-error=unused-but-set-variable',
            '-Wno-error=unused-local-typedefs',
            '-Wno-error=unused-function',
            '-Wno-error=unused-label',
            '-Wno-error=unused-value',
            '-Wno-error=unused-variable',
            '-Wno-error=unused-parameter',
            '-Wno-error=unused-but-set-parameter',
            '-march=native',
        ]
        if platform.system() == 'Darwin' and platform.machine() == 'arm64':
            flags = flags[:-1]

        if self.version and self.version[0] >= 11 and self.apple == False:
            flags.append('-Wno-psabi')

        super().__init__(program=program, common_flags=flags)

    @staticmethod
    def __get_version(program: str):
        try:
            args = [program, '-dM', '-fopenmp', '-E', '-']
            if platform.system() == 'Darwin':
                args = [
                    program, '-dM', '-Xpreprocessor', '-fopenmp', '-E', '-'
                ]
            log_command(args, 2)
            output = subprocess.run(args,
                                    input='',
                                    timeout=10,
                                    stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE,
                                    encoding='utf-8',
                                    errors='utf-8')
            if output.returncode == 0:
                lines = output.stdout.split('\n')
                matches = [
                    re.match('^#define (\\w+) (.*)$', line) for line in lines
                ]
                macros = {
                    match.group(1): match.group(2)
                    for match in matches if match is not None
                }
                try:
                    apple = True if 'Apple' in macros['__VERSION__'] else False
                except:
                    apple = None
                if '__clang__' in macros and '_OPENMP' in macros:
                    try:
                        return [(int(macros['__clang_major__']),
                                 int(macros['__clang_minor__']),
                                 int(macros['__clang_patchlevel__'])), apple]
                    except TypeError:
                        pass

        except FileNotFoundError:
            pass
        except PermissionError:
            pass

        return [None, None]

    def __repr__(self):
        return f'Clang compiler ({self.program})'

    def add_omp_flags(self) -> 'Compiler':
        # Apple clang doesn't have openmp compiled so we want to include the homebrew package.
        if platform.system() == 'Darwin':
            try:
                brew_dir_command = ['brew', '--prefix']
                log_command(brew_dir_command)
                brew_dir = subprocess.run(brew_dir_command,
                                          timeout=10,
                                          stdout=subprocess.PIPE,
                                          stderr=subprocess.PIPE,
                                          encoding='utf-8').stdout.strip()
            except FileNotFoundError:
                message = '''It seems that you don't have Homebrew installed.
It is needed if you want to run OpenMP tasks on macOS.
It would be great if you could install Homebrew from:

    https://brew.sh/

After that you need to install libomp with this command:

    brew install libomp

'''
                if platform.machine() != 'arm64':
                    message += '''
Or alternatively you can try to install GCC and use it instead of Clang:

    brew install gcc

'''
                message += '''Once you have done that, please try to run the same command again,
I should be able to find the right packages and compilers then!'''
                sys.exit(message)

            try:
                brew_libomp_command = ['brew', 'list', 'libomp']
                log_command(brew_libomp_command)
                assert (subprocess.run(brew_libomp_command,
                                       timeout=10,
                                       stdout=subprocess.PIPE,
                                       stderr=subprocess.PIPE).returncode == 0)
            except subprocess.TimeoutExpired:
                print('Could not check required packages. Continuing...')
            except AssertionError:
                message = '''It seems that you have got Homebrew installed, which is great!
However, it seems you do not have the libomp package installed.
This is needed if you want to use OpenMP with the Clang C++ compiler.

Could you please try to install libomp with this command:

    brew install libomp

'''
                if platform.machine() != 'arm64':
                    message += '''
Or alternatively you can try to install GCC and use it instead of Clang:

    brew install gcc

'''
                message += '''Once you have done that, please try to run the same command again,
I should be able to find the right packages and compilers then!'''
                sys.exit(message)

            # Nowadays OpenMP installation on brew has some quirks
            # > $ brew info libomp
            # > libomp is keg-only, which means it was not symlinked into /opt/homebrew,
            # > because it can override GCC headers and result in broken builds.
            # >
            # > For compilers to find libomp you may need to set:
            # >   export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
            # >   export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"
            #
            # Let's try to guess these paths based, and still keep the old paths

            self = self.add_flag('-Xpreprocessor', '-fopenmp')
            self = self.add_flag('-I', f'{brew_dir}/include')
            self = self.add_flag('-I', f'{brew_dir}/opt/libomp/include')
            if sys.argv[1] != 'assembly':
                self = self.add_flag('-lomp')
                self = self.add_flag('-L', f'{brew_dir}/lib')
                self = self.add_flag('-L', f'{brew_dir}/opt/libomp/lib')

        else:
            self = self.add_flag('-fopenmp')
        return self

    def is_valid(self) -> bool:
        if platform.system() == 'Darwin':
            return super().is_valid(
                [self.program, '-dM', '-Xpreprocessor', '-fopenmp', '-E', '-'])
        else:
            return super().is_valid()


class NvccCompiler(Compiler):
    def __init__(self, program: str = 'nvcc'):
        super().__init__(program=program,
                         common_flags=[
                             '-std=c++17',
                             '--Werror',
                             'cross-execution-space-call',
                             '-Xptxas',
                             '--warn-on-spills',
                             '-Xcompiler',
                             '"-Wall"',
                             '-Xcompiler',
                             '"-Wextra"',
                             '-Xcompiler',
                             '"-Werror"',
                             '-Xcompiler',
                             '"-Wno-error=unknown-pragmas"',
                             '-Xcompiler',
                             '"-Wno-error=unused-local-typedefs"',
                             '-Xcompiler',
                             '"-Wno-error=unused-function"',
                             '-Xcompiler',
                             '"-Wno-error=unused-label"',
                             '-Xcompiler',
                             '"-Wno-error=unused-value"',
                             '-Xcompiler',
                             '"-Wno-error=unused-variable"',
                             '-Xcompiler',
                             '"-Wno-error=unused-parameter"',
                             '-Xcompiler',
                             '"-Wno-psabi"',
                             '-Xcompiler',
                             '"-march=native"',
                         ])

    def __repr__(self):
        return f'NVCC compiler ({self.program})'

    def add_omp_flags(self) -> 'Compiler':
        self.common_flags += ['-Xcompiler', '-fopenmp']
        return self

    def is_valid(self) -> bool:
        return super().is_valid(
            [self.program, '-Xcompiler', '-dM', '-x', 'cu', '-E', '-'])


def find_gcc_compiler():
    best = None
    for program in GCC_BINARIES:
        compiler = GccCompiler(program)
        if compiler.version and compiler.version[0] >= MIN_GCC and (
                best is None or best.version < compiler.version):
            best = compiler
    if best is not None:
        return best


def find_clang_compiler():
    best = None
    for program in CLANG_BINARIES + GCC_BINARIES:
        compiler = ClangCompiler(program)

        if compiler.version and compiler.version[0] >= MIN_CLANG and (
                best is None or best.version < compiler.version):
            best = compiler

    if best is not None:
        return best


def find_nvcc_compiler():
    best = None
    for program in NVCC_BINARIES:
        try:
            log_command([program], 2)
            output = subprocess.run([program],
                                    input='',
                                    timeout=10,
                                    stdout=subprocess.PIPE,
                                    stderr=subprocess.PIPE,
                                    encoding='utf-8',
                                    errors='utf-8')
            if output.returncode == 1:
                best = (program, 0)
        except FileNotFoundError:
            pass
    if best is not None:
        return NvccCompiler(best[0])
