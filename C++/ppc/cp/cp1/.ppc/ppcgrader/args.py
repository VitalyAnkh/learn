import argparse
import sys
from typing import Any, Optional, Sequence, Union, Dict, Callable

from ppcgrader.config import Config
from ppcgrader.compiler import ClangCompiler, NvccCompiler, GccCompiler, find_gcc_compiler, find_clang_compiler, find_nvcc_compiler
from ppcgrader.reporter import JsonReporter, TerminalReporter
from ppcgrader.commands import *


def command_type(gpu: bool):
    command_macros = {
        'test': [
            'test-asan',
            # 'test-tsan',
            'test-plain'
        ],
        'benchmark': ['benchmark-all'],
    }
    if gpu:
        command_macros.update({
            'test': [
                'test-asan',
                'test-memcheck-memcheck',
                # 'test-memcheck-racecheck',
                'test-memcheck-initcheck',
                'test-memcheck-synccheck',
                'test-plain'
            ],
            'test-memcheck': [
                'test-memcheck-memcheck',
                # 'test-memcheck-racecheck',
                'test-memcheck-initcheck',
                'test-memcheck-synccheck'
            ],
        })

    def parser(command: str):
        expanded = (command_macros[command]
                    if command in command_macros else [command])
        return expanded

    return parser


def command_from_name(command: str,
                      gpu: bool) -> Callable[[str, Config], Command]:
    # If changing these, remember to update the name of the test group to match
    # the command line argument
    commands: Dict[str, Callable[[str, Config], Command]] = {
        'assembly': AssemblyCommand,
        'test-asan': TestAsanCommand,
        'test-uninit': TestUninitCommand,
        # 'test-tsan': TestTsanCommand,
        'test-plain': TestPlainCommand,
        'benchmark-all': BenchmarkCommand,
    }

    if gpu:
        commands.update({
            'test-memcheck-memcheck': TestMemcheckCommand,
            'test-memcheck-racecheck': TestRacecheckCommand,
            'test-memcheck-initcheck': TestInitcheckCommand,
            'test-memcheck-synccheck': TestSynccheckCommand,
        })

    if command not in commands:
        raise argparse.ArgumentError(None, f'Unknown command {command}')

    return commands[command]


def clang_compiler(name):
    if name == '':
        compiler = find_clang_compiler()
    else:
        compiler = ClangCompiler(name)
    if compiler is None:
        raise argparse.ArgumentTypeError(
            f"Couldn't automatically find clang compiler")
    elif not compiler.is_valid():
        raise argparse.ArgumentTypeError(
            f"Program {compiler} is not a supported clang compiler")
    return compiler


def gcc_compiler(name):
    if name == '':
        compiler = find_gcc_compiler()
    else:
        compiler = GccCompiler(name)
    if compiler is None:
        raise argparse.ArgumentTypeError(
            f"Couldn't automatically find gcc compiler")
    elif not compiler.is_valid():
        raise argparse.ArgumentTypeError(
            f"Program {compiler} is not a supported gcc compiler")
    return compiler


def nvcc_compiler(name):
    if name == '':
        compiler = find_nvcc_compiler()
    else:
        compiler = NvccCompiler(name)
    if compiler is None:
        raise argparse.ArgumentTypeError(
            f"Couldn't automatically find nvcc compiler")
    elif not compiler.is_valid():
        raise argparse.ArgumentTypeError(
            f"Program {compiler} is not a supported nvcc compiler")
    return compiler


def remote_compiler(family: str):
    def compiler_passthrough(name: str):
        return (family, name)

    return compiler_passthrough


class HelpAction(argparse.Action):
    def __init__(self, nargs: Any, **kwargs) -> None:
        super().__init__(nargs=0, **kwargs)

    def __call__(self, parser: argparse.ArgumentParser,
                 namespace: argparse.Namespace,
                 values: Union[str, Sequence[Any],
                               None], option_string: Optional[str]) -> None:
        # We add tests argument here to get it to show in help.
        parser.add_argument(
            'tests',
            nargs='*',
            metavar='tests',
            help=
            'tests to run; can be a list or glob of test files or test names')

        parser.print_help()
        parser.exit()


# Backport from Python 3.9's argparse source code
# https://github.com/python/cpython/blob/3.9/Lib/argparse.py#L856
class BooleanOptionalAction(argparse.Action):
    def __init__(self,
                 option_strings,
                 dest,
                 default=None,
                 type=None,
                 choices=None,
                 required=False,
                 help=None,
                 metavar=None):

        _option_strings = []
        for option_string in option_strings:
            _option_strings.append(option_string)

            if option_string.startswith('--'):
                option_string = '--no-' + option_string[2:]
                _option_strings.append(option_string)

        if help is not None and default is not None:
            help += f" (default: {default})"

        super().__init__(option_strings=_option_strings,
                         dest=dest,
                         nargs=0,
                         default=default,
                         type=type,
                         choices=choices,
                         required=required,
                         help=help,
                         metavar=metavar)

    def __call__(self, parser, namespace, values, option_string=None):
        if option_string is not None and option_string in self.option_strings:
            setattr(namespace, self.dest,
                    not option_string.startswith('--no-'))

    def format_usage(self):
        return ' | '.join(self.option_strings)


class IgnoreAndWarnAction(argparse.Action):
    """Show a warning that the given flag is ignored."""
    def __call__(self, parser: argparse.ArgumentParser,
                 namespace: argparse.Namespace,
                 values: Union[str, Sequence[Any],
                               None], option_string: Optional[str]) -> None:
        print(f"Ignoring flag {option_string} {values}", file=sys.stderr)


def add_remote_argument(parser):
    parser.add_argument(
        '--remote',
        action='store_const',
        dest='remote',
        default=False,
        const=True,
        help='run this command remotely (only for testing code for yourself)',
    )


def prepare_parser(config: Config, remote: bool = False):
    parser = argparse.ArgumentParser(
        prog='grading',
        usage='./grading [-h|--help] [options] command [tests ...]',
        description='''
PPC grading tool

Run all tests:
    ./grading test

Run all benchmarks
    ./grading benchmark

Run tests with address sanitizer only
    ./grading test-asan

Run only tests 001 and 017
    ./grading test tests/001 tests/017
''',
        allow_abbrev=False,
        formatter_class=argparse.RawTextHelpFormatter,
        add_help=False,
    )
    # We'll handle help manually to add tests argument in help but not when
    # parsing for the first time. Otherwise argparse asks to give both command
    # and tests even though giving zero tests suffices.
    parser.add_argument('-h',
                        '--help',
                        action=HelpAction,
                        nargs=0,
                        dest='help',
                        help='show this help message and exit')

    parser.add_argument('--json',
                        action='store_const',
                        dest='reporter',
                        default=TerminalReporter,
                        const=JsonReporter,
                        help=argparse.SUPPRESS)
    parser.add_argument('--timeout', type=float, help='timeout for each test')

    compiler_group = parser.add_mutually_exclusive_group()
    compiler_group.add_argument(
        '--clang',
        dest='compiler',
        nargs='?',
        default=None,
        const='',
        help=
        'use given clang compiler, or if left empty try to find a suitable compiler',
        type=clang_compiler if not remote else remote_compiler('clang'))
    compiler_group.add_argument(
        '--gcc',
        dest='compiler',
        nargs='?',
        default=None,
        const='',
        help=
        'use given gcc compiler, or if left empty try to find a suitable compiler',
        type=gcc_compiler if not remote else remote_compiler('gcc'))
    compiler_group.add_argument(
        '--nvcc',
        dest='compiler',
        nargs='?',
        default=None,
        const='',
        help=
        'use given nvcc compiler, or if left empty try to find a suitable compiler',
        type=nvcc_compiler if not remote else remote_compiler('nvcc'))

    parser.add_argument('--file',
                        action='store',
                        dest='file',
                        default=config.source,
                        help='file to be graded',
                        type=str)

    # Path to the produced binary
    parser.add_argument('--binary',
                        action='store' if not remote else IgnoreAndWarnAction,
                        dest='binary',
                        default=config.binary,
                        help=argparse.SUPPRESS,
                        type=str)

    # Not actually used here, but needed for help and to recognize as a known
    # argument
    add_remote_argument(parser)

    parser.add_argument(
        '--ignore-errors',
        action='store_const',
        dest='ignore_errors',
        default=False,
        const=True,
        help='run through all tests without stopping at the first error',
    )

    parser.add_argument(
        '-v',
        '--verbose',
        action='count',
        dest='verbose',
        default=0,
        help=
        'show the commands that I run (give twice to make me more talkative)')

    parser.add_argument(
        '--nvprof',
        action=BooleanOptionalAction,
        dest='nvprof',
        default=config.gpu,
        help=
        'collect profiler statistics using nvprof; works only with benchmark command',
    )

    parser.add_argument(
        'commands',
        metavar='command',
        type=command_type(config.gpu),
        help='command to run, for example \'test\' or \'benchmark\'')

    return parser
