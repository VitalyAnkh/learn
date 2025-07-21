import argparse
import sys
from typing import Any, Optional, Sequence, Union, Dict, Type, List

from ppcgrader.config import Config
from ppcgrader.compiler import ClangCompiler, NvccCompiler, GccCompiler, find_gcc_compiler, find_clang_compiler, find_nvcc_compiler
from ppcgrader.reporter import JsonReporter, TerminalReporter
from ppcgrader.commands import Command, CommandFlavor, COMMANDS


def expand_macro(command: str, gpu: bool) -> List[str]:
    command_macros = {'test': [], 'benchmark': []}
    command_macros['test'].append('test-asan')
    if not gpu:
        command_macros['test'].append('test-uninit')
    #command_macros['test'].append('test-tsan')
    command_macros['benchmark'].append('benchmark-all')
    if gpu:
        command_macros['test'] += [
            'test-memcheck-memcheck',
            #'test-memcheck-racecheck',
            'test-memcheck-initcheck',
            'test-memcheck-synccheck',
        ]
        command_macros['test-memcheck'] = [
            'test-memcheck-memcheck',
            # 'test-memcheck-racecheck',
            'test-memcheck-initcheck',
            'test-memcheck-synccheck'
        ]
    command_macros['test'].append('test-plain')

    expanded = (command_macros[command]
                if command in command_macros else [command])
    return expanded


def command_from_name(command: str, config: Config) -> Command:
    commands: Dict[str, Type[Command]] = {
        c.name: c
        for c in COMMANDS if c.flavor != CommandFlavor.GPU
    }

    if config.gpu:
        commands.update(
            {c.name: c
             for c in COMMANDS if c.flavor == CommandFlavor.GPU})

    if command not in commands:
        raise argparse.ArgumentError(None, f'Unknown command {command}')

    return commands[command](config)


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


def help_action(config: Config):
    class HelpAction(argparse.Action):
        def __init__(self, nargs: Any, **kwargs) -> None:
            super().__init__(nargs=0, **kwargs)

        def __call__(self, parser: argparse.ArgumentParser,
                     namespace: argparse.Namespace,
                     values: Union[str, Sequence[Any], None],
                     option_string: Optional[str]) -> None:

            # use a fresh parser to show help without duplicate entries
            copy = prepare_parser(config)
            # We add tests argument here to get it to show in help.
            copy.add_argument(
                'tests',
                nargs='*',
                metavar='tests',
                help=
                'tests to run; can be a single file, list or glob of test files: tests/<filename1>.txt tests/<filename2>.txt or \'tests/*\''
            )

            # Not actually used here, but needed for help and to recognize as a known
            # argument. Remote parsing happens in cli.py.
            add_remote_argument(copy)
            add_command_parsing(copy, config)

            copy.print_help()
            parser.exit()

    return HelpAction


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


class SubcommandHelpFormatter(argparse.RawDescriptionHelpFormatter):
    def _format_action(self, action):
        parts = super(argparse.RawDescriptionHelpFormatter,
                      self)._format_action(action)
        if action.nargs == argparse.PARSER:
            parts = "\n".join(parts.split("\n")[1:])
        return parts


__commands = {c.name: c.help for c in COMMANDS}
__commands.update({
    'test': 'run all test-* commands',
    'test-memcheck': 'run all memcheck-* commands (except racecheck)',
    'benchmark': 'alias for benchmark-all',
})


def add_command_parsing(parser: argparse.ArgumentParser,
                        config: Config,
                        required: bool = True):
    """Adds command parsing as subparsers"""
    def add_parser_with_name(name: str):
        """Create a new subparser from a string"""
        subparsers.add_parser(name, help=__commands[name], add_help=False)

    subparsers = parser.add_subparsers(
        title='commands',
        # required=True,
        dest='command')
    # Python 3.6 does not support required when creating the subparser
    subparsers.required = required

    add_parser_with_name("assembly")
    add_parser_with_name("assembly-ptx")
    add_parser_with_name("assembly-sass")

    add_parser_with_name('compile')
    add_parser_with_name('compile-debug')
    add_parser_with_name('compile-demo')
    add_parser_with_name('demo')
    add_parser_with_name('test')
    add_parser_with_name('test-asan')

    # TODO uninit does not work with GPU exercises
    if not config.gpu:
        add_parser_with_name('test-uninit')

    add_parser_with_name('test-plain')

    if config.gpu:
        add_parser_with_name("test-memcheck")
        add_parser_with_name("test-memcheck-memcheck")
        add_parser_with_name("test-memcheck-racecheck")
        add_parser_with_name("test-memcheck-initcheck")
        add_parser_with_name("test-memcheck-synccheck")

    add_parser_with_name("benchmark")
    add_parser_with_name("benchmark-cache")
    add_parser_with_name("benchmark-all")


def prepare_parser(config: Config, remote: bool = False):
    parser = argparse.ArgumentParser(
        prog='grading',
        usage='./grading [-h|--help] [options] command [tests ...]',
        description='PPC grading tool',
        allow_abbrev=False,
        formatter_class=SubcommandHelpFormatter,
        add_help=False,
    )
    # We'll handle help manually to add tests argument in help but not when
    # parsing for the first time. Otherwise argparse asks to give both command
    # and tests even though giving zero tests suffices.
    parser.add_argument('-h',
                        '--help',
                        action=help_action(config=config),
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
    parser.add_argument('--no-timeout',
                        action='store_const',
                        dest='no_timeout',
                        default=False,
                        const=True,
                        help='disable timeouts')

    # special argument for internal use
    parser.add_argument('--query-timeout',
                        action='store_const',
                        dest='query_timeout',
                        default=False,
                        const=True,
                        help=argparse.SUPPRESS)

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

    return parser


def parse_args(raw_args, config: Config, remote: bool = False):
    """
    Parse first for flags and available commands. After that parse for extra
    flags the user might give after the command or between the tests. Warn
    about any unknown flags when parsing for tests.
    """
    command_parser = prepare_parser(config, remote)
    add_command_parsing(command_parser, config)
    post_flag_parser = prepare_parser(config, remote)

    args, temp1 = command_parser.parse_known_args(raw_args)
    # Combine the pre and post command args
    temp2, tests = post_flag_parser.parse_known_args(temp1, namespace=args)

    # Check that there aren't any extra flags or commands among test files
    for test in tests:
        if test.startswith('-'):
            sys.exit(f'./grading: error: Unknown flag {test}')

        if test in __commands:
            print(
                f'./grading: warning: Grader takes only one command. Argument {test} will be parsed as a test file',
                file=sys.stderr)

    return args, tests
