from argparse import Namespace
from typing import Any, Dict, List
import sys

from ppcgrader.args import expand_macro, command_from_name, parse_args
from ppcgrader.config import Config
from ppcgrader.reporter import JsonReporter, TerminalReporter
from ppcgrader.api_tools import API, APIError


class RemoteAPI(API):
    def submit_run(self, remote_grader: str, args):
        url = f"{self.url}/v1/remote-run/{remote_grader}"
        return self.make_json_request(url, args)

    def test_connection(self):
        return self.make_json_request(f"{self.url}/v1/me")


def collect_args(args: Namespace, tests: List[str],
                 config: Config) -> Dict[str, Any]:
    collected = {}
    commands = []

    for arg, value in args.__dict__.items():
        if arg in ['help', 'binary', 'remote', 'query_timeout']:
            # Ignore silently
            pass

        elif arg in ['ignore_errors', 'verbose', 'compiler', 'nvprof']:
            # Pass arguments as is
            collected[arg] = value

        elif arg == 'timeout':
            if value is not None and value > 10:
                print(
                    'Warning: You might run into the global timeout for remote runs when setting a large test timeout.',
                    file=sys.stderr)
            collected['timeout'] = value

        elif arg == 'no_timeout':
            if value is True:
                print(
                    'Warning: You might run into the global timeout for remote runs when disabling timeouts.',
                    file=sys.stderr)
            collected[arg] = value

        elif arg == 'file':
            # Load content of source code file
            try:
                collected['file'] = open(value, 'r').read()
            except FileNotFoundError:
                sys.exit(f'Could not find source code file {value}')

        elif arg == 'command':
            # Take commands to the side for a moment
            commands = expand_macro(value, config.gpu)

        elif arg == 'reporter':
            if value == TerminalReporter:
                collected['reporter'] = 'terminal'
            elif value == JsonReporter:
                collected['reporter'] = 'json'
            else:
                print(f'Unknown reporter: {value}', file=sys.stderr)

        else:
            print(f'Unknown argument: {arg}', file=sys.stderr)
            print(
                f'This is likely a bug in the grader. Please report this message along with the command you ran to the course staff.',
                file=sys.stderr,
            )

    # Collected currently contains general settings. Only commands are missing.
    collected_commands = []
    for command_name in commands:
        command = command_from_name(command_name, config)
        if not command.allow_remote:
            sys.exit(
                f"Command '{command_name}' does not support '--remote' execution"
            )

        try:
            collected_tests = [(test, open(test, 'r').read())
                               for test in command.collect_tests(tests)]
        except FileNotFoundError as e:
            sys.exit(f'Could not find test file {e.filename}')
        collected_commands.append((command_name, collected_tests))

    collected['commands'] = collected_commands
    collected['color'] = sys.stdout.isatty()

    return collected


def exec_remote(config: Config, raw_args: List[str]):
    remote_grader = config.env_remote_grader.get_optional()
    if remote_grader is None:
        sys.exit('This task does not support remote execution.')

    # Parse the args and check them for validity. Show warnings for suspicious flags
    args, tests = parse_args(raw_args, config, remote=True)
    args = collect_args(args, tests, config)

    url = config.env_api_url.get_required()
    token = config.env_api_token.get_required()
    http_basic_auth = config.http_basic_auth.get_optional()
    api = RemoteAPI(url, token, http_basic_auth)

    # Test if the token is valid
    try:
        result = api.test_connection()
    except APIError as e:
        print("Error while testing connection:\n", file=sys.stderr)
        if e.reason == "AUTH_ERROR" or e.reason == "AUTH_FAILED":
            sys.exit(config.env_api_token.explain("is invalid"))
        else:
            print(e.message, file=sys.stderr)
            if e.unexpected:
                print(
                    "\nThis is most likely a bug in the grading system. Please report this message along with the command you ran to the course staff.",
                    file=sys.stderr,
                )
            sys.exit(1)

    # Sum up timeout of all tests. Show a warning if the total timeout is too large.
    local_sum_timeout = 0
    for name, test in args['commands']:
        for file, data in test:
            first_line = open(file, 'r').readline().split(' ')
            if first_line[0] == "timeout":
                local_sum_timeout += float(first_line[1])

    remote_max_timeout_str = config.env_remote_max_timeout.get_optional()
    if remote_max_timeout_str is not None:
        remote_max_timeout = float(remote_max_timeout_str)
        if local_sum_timeout > remote_max_timeout:
            print(
                "You have submitted a large job for remote execution. You may encounter a time out."
            )
            print(
                f"The total timeout of all tests you have submitted is {local_sum_timeout:.1f}s, while the remote execution will time out after {remote_max_timeout:.1f}s."
            )
            print()

    try:
        results = api.submit_run(remote_grader, args)
    except APIError as e:
        print("Error while trying to submit for remote execution:\n",
              file=sys.stderr)
        print(e.message, file=sys.stderr)
        if e.unexpected:
            print(
                "\nThis is most likely a bug in the grading system. Please report this message along with the command you ran to the course staff.",
                file=sys.stderr,
            )
        sys.exit(1)

    if not results:
        print(
            "No results were received from the server. This could be caused by a bug in the grading system, or your command may have been stopped by an admin.",
            file=sys.stderr,
        )
        sys.exit(1)

    exit_code = 0

    for result in results:
        verdict = result['verdict']
        out = result['output']
        if verdict == 'SUCCESS':
            # Hack: Exit code is encoded on the last line, specifically as "\n$?".
            # See run_remote.sh.
            split = out.rsplit('\n', 1)
            try:
                if len(split[1]) > 3:
                    raise ValueError
                exit_code = int(split[1])
                out = split[0]
            except (ValueError, IndexError):
                pass
        else:
            if verdict == 'TIMEOUT':
                print(
                    'Error: The global timeout was exhausted while running your command.',
                    file=sys.stderr)
                print(
                    'Consider running only one command at a time, e.g. \'test-plain\' or \'test-asan\',\nor running less tests at once by specifying them, e.g. \'./grading test tests/001.txt\'.\n',
                    file=sys.stderr)
            else:
                print(
                    'Error: Something went wrong while running your command.',
                    file=sys.stderr)
            print('This is what was received from the server:',
                  file=sys.stderr)
            exit_code = 1

        print(out, end='' if out.endswith('\n') else '\n')

    if args['color']:
        # Reset color just in case
        print('\033[0m', end='')

    sys.exit(exit_code)
