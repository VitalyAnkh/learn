import signal

signal.signal(signal.SIGINT, lambda x, y: sys.exit(x + 128))  # noqa: E402

from os import path, makedirs
import argparse
import json
import sys

from ppcgrader.args import add_remote_argument, parse_args, clang_compiler, expand_macro, command_from_name, gcc_compiler, nvcc_compiler
from ppcgrader.config import Config
from ppcgrader.logging import set_log_level, set_log_color, set_log_enabled
from ppcgrader.remote import exec_remote
from ppcgrader.reporter import TerminalReporter, JsonReporter
from ppcgrader import BOX_PATH


def write_file(name: str, content: str) -> str:
    # Try to validate that the path is inside the box. If it tries to escape the
    # box, move it inside the box. Note that this is not security-critical as
    # the rest of the grader environment is read-only. This is just so that we
    # can try to serve the user as well as possible.
    p = path.abspath(path.join(BOX_PATH, name))
    if path.relpath(p, BOX_PATH).startswith('.'):
        # Validation failed. Just use the basename
        p = path.join(BOX_PATH, path.basename(name))

    dir = path.dirname(p)
    makedirs(dir, exist_ok=True)
    open(p, 'w').write(content)
    return p


def cli(config: Config):
    config.collect_env()

    # Start by checking remote flag
    parser = argparse.ArgumentParser(add_help=False, allow_abbrev=False)

    add_remote_argument(parser)

    args, remote_args = parser.parse_known_args()
    if args.remote:
        # This command is to be run remotely
        exec_remote(config, remote_args)
        raise ValueError  # This line should never be reached

    # Next check whether this command was executed remotely
    parser = argparse.ArgumentParser(add_help=False, allow_abbrev=False)

    parser.add_argument(
        '--on-remote',
        action='store',
        dest='on_remote',
        help='file containing remote arguments',
    )

    args, unknown_args = parser.parse_known_args()
    if args.on_remote is not None and not unknown_args:
        config.on_remote = True

        # This command is the remote counterpart of --remote flag. The passed
        # arguments are in the passed file as JSON.

        PARSE_ERROR_MSG = 'This is likely a bug in the grader, or your version of the grader is incompatible. Please report this message along with the command you ran to the course staff.'

        try:
            args = json.load(open(args.on_remote, 'r'))
        except json.JSONDecodeError as e:
            print(f'Error while parsing received arguments JSON: {e}',
                  file=sys.stderr)
            sys.exit(PARSE_ERROR_MSG)

        try:
            color = bool(args['color'])

            set_log_level(int(args['verbose']))
            set_log_color(color)

            if args['reporter'] is None or args['reporter'] == 'terminal':
                reporter = TerminalReporter(config, color)
            elif args['reporter'] == 'json':
                reporter = JsonReporter(config)
                set_log_enabled(False)
            else:
                sys.exit(f'Unknown reporter {args["reporter"]}')

            if args['compiler'] is None:
                compiler = None
            elif args['compiler'][0] == 'gcc':
                compiler = gcc_compiler(str(args['compiler'][1]))
            elif args['compiler'][0] == 'clang':
                compiler = clang_compiler(str(args['compiler'][1]))
            elif args['compiler'][0] == 'nvcc':
                compiler = nvcc_compiler(args['compiler'][1])
            else:
                sys.exit(f'Unknown compiler {args["compiler"]}')

            timeout = float(
                args['timeout']) if args['timeout'] is not None else None

            no_timeout = bool(args.get('no_timeout', False))

            config.source = write_file(config.source, str(args['file']))
            config.binary = write_file(config.binary, '')
            config.nvprof = bool(args['nvprof'])
            config.ignore_errors = bool(args['ignore_errors'])

            commands = [[
                str(command), [[str(name), str(data)] for name, data in tests]
            ] for command, tests in args['commands']]
        except KeyError as e:
            print(f'Missing received argument {e}', file=sys.stderr)
            sys.exit(PARSE_ERROR_MSG)
        except (ValueError, TypeError, IndexError) as e:
            print('Error while parsing received arguments.',
                  PARSE_ERROR_MSG,
                  file=sys.stderr)
            print(file=sys.stderr)
            raise

        for command_name, tests_with_data in commands:
            tests = []
            for name, data in tests_with_data:
                tests.append(write_file(name, data))

            command = command_from_name(command_name, config)

            if not command.allow_remote:
                break

            passed = command.exec(compiler=compiler,
                                  reporter=reporter,
                                  tests=tests,
                                  timeout=timeout,
                                  no_timeout=no_timeout)
            if not passed:
                break

        reporter.finalize()
        sys.exit(0)
    else:
        config.on_remote = False

    # Use the real parser to parse arguments. The unknown arguments are assumed
    # to be test files
    args, tests = parse_args(None, config)  # None for parsing sys.argv

    timeout = args.timeout
    no_timeout = args.no_timeout

    if args.query_timeout:
        total = 0
        for command_name in expand_macro(args.command, config.gpu):
            command = command_from_name(command_name, config)
            total += command.query_timeout(tests=tests,
                                           timeout=timeout,
                                           no_timeout=no_timeout)
        print(total)
        return

    reporter = args.reporter(config)
    compiler = args.compiler

    config.source = args.file
    config.binary = args.binary
    config.nvprof = args.nvprof

    config.ignore_errors = args.ignore_errors

    set_log_level(args.verbose)
    if isinstance(reporter, JsonReporter):
        set_log_enabled(False)

    for command_name in expand_macro(args.command, config.gpu):
        command = command_from_name(command_name, config)
        passed = command.exec(compiler=compiler,
                              reporter=reporter,
                              tests=tests,
                              timeout=timeout,
                              no_timeout=no_timeout)
        if not passed:
            break

    reporter.finalize()
