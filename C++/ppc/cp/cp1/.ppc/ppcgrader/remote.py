from argparse import Namespace
from typing import Any, Dict, List, Optional
from base64 import b64encode
import json
import sys
import urllib.request, urllib.parse, urllib.error

from ppcgrader.args import command_from_name, prepare_parser
from ppcgrader.config import Config
from ppcgrader.reporter import JsonReporter, TerminalReporter


class APIError(Exception):
    def __init__(self, status: int, reason: Optional[str], unexpected: bool,
                 message: str):
        self.status = status
        self.reason = reason
        # The error should not occur in normal use and may indicate a bug
        self.unexpected = unexpected
        self.message = message
        super().__init__(message)


class RemoteAPI:
    def __init__(self, url: str, token: str, http_basic_auth: Optional[str]):
        self.url = url.rstrip('/')
        self.token = b64encode(token.encode('utf-8')).decode()
        if http_basic_auth is not None:
            self.http_basic_auth = b64encode(
                http_basic_auth.encode('utf-8')).decode()
        else:
            self.http_basic_auth = None

    def make_json_request(self, url: str, body):
        data = json.dumps(body).encode('utf-8')
        headers = {
            'Content-Type': 'application/json; charset=utf-8',
            'Api-Authorization': f'Basic {self.token}'
        }
        if self.http_basic_auth:
            # Needed for staging environment
            headers['Authorization'] = f'Basic {self.http_basic_auth}'
        request = urllib.request.Request(
            url,
            data=data,
            headers=headers,
        )
        try:
            return json.loads(urllib.request.urlopen(request).read())
        except urllib.error.HTTPError as e:
            try:
                # Try to read JSON error response
                response = json.loads(e.read())
                status = int(response['status'])
                reason = str(response['reason'])
                unexpected = bool(response['unexpected'])
                message = str(response['message'])
            except (json.decoder.JSONDecodeError, TypeError, IndexError,
                    ValueError):
                status = e.code
                reason = None
                unexpected = status >= 500
                message = str(e)
            raise APIError(status, reason, unexpected, message) from None

    def submit_run(self, remote_grader: str, args):
        url = f"{self.url}/v1/remote-run/{remote_grader}"
        return self.make_json_request(url, args)


def collect_args(args: Namespace, tests: List[str],
                 config: Config) -> Dict[str, Any]:
    collected = {}
    commands = []

    for arg, value in args.__dict__.items():
        if arg in ['help', 'binary', 'remote']:
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

        elif arg == 'file':
            # Load content of source code file
            try:
                collected['file'] = open(value, 'r').read()
            except FileNotFoundError:
                sys.exit(f'Could not find source code file {value}')

        elif arg == 'commands':
            # Take commands to the side for a moment
            commands = value

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
        command_class = command_from_name(command_name, gpu=config.gpu)
        command = command_class(command_name, config)
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
    parser = prepare_parser(config, remote=True)
    args, tests = parser.parse_known_args(raw_args)

    # Check that there aren't any extra flags among test files
    for test in tests:
        if test.startswith('-'):
            sys.exit(f'./grading: error: Unknown flag {test}')

    args = collect_args(args, tests, config)

    url = config.env_api_url.get_required()
    token = config.env_api_token.get_required()
    http_basic_auth = config.http_basic_auth.get_optional()
    api = RemoteAPI(url, token, http_basic_auth)

    try:
        results = api.submit_run(remote_grader, args)
    except APIError as e:
        print('Error while trying to submit for remote execution:\n',
              file=sys.stderr)
        if e.reason == 'AUTH_ERROR' or e.reason == 'AUTH_FAILED':
            sys.exit(config.env_api_token.explain('is invalid'))
        else:
            print(e.message, file=sys.stderr)
            if e.unexpected:
                print(
                    '\nThis is most likely a bug in the grading system. Please report this message along with the command you ran to the course staff.',
                    file=sys.stderr,
                )
            sys.exit(1)

    if not results:
        print(
            'No results were received from the server. This could be caused by a bug in the grading system, or your command may have been stopped by an admin.',
            file=sys.stderr)
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
