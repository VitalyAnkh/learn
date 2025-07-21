import os
import sys
import json
import platform
import urllib.request, urllib.error
from typing import Optional
from base64 import b64encode


class EnvProperty:
    def __init__(self,
                 sources,
                 name: str,
                 human_name: str,
                 env=None,
                 path=True,
                 home=True,
                 factory=True,
                 help=None):
        self.sources = sources
        self.name = name
        self.human_name = human_name
        self.env = env
        self.path = path
        self.home = home
        self.factory = factory
        self.help = help
        self.value = self.collect()

    def collect(self):
        value = None
        if self.factory and self.name in self.sources['factory']:
            value = self.sources['factory'][self.name]
        if self.home and self.name in self.sources['home']:
            value = self.sources['home'][self.name]
        if self.path and self.name in self.sources['path']:
            value = self.sources['path'][self.name]
        if self.env is not None:
            env_value = os.getenv(self.env)
            if env_value is not None:
                value = env_value
        return value

    def get_required(self) -> str:
        if self.value is not None:
            return self.value
        else:
            sys.exit(self.explain())

    def get_optional(self) -> Optional[str]:
        return self.value

    def explain(self, status='not configured'):
        methods = []
        if self.env is not None:
            methods.append(f' · Set the environment variable {self.env}.')
        if self.path or self.home:
            if self.path and self.home:
                location = f'in either {self.sources["home_path"]} or\n   the current directory, '
            elif self.path:
                location = 'in the current directory, '
            else:
                location = f'in {self.sources["home_path"]},\n   '
            methods.append(
                f""" · Create a file "config.json" {location}with contents like this:

{{
    "{self.name}": "place the value here"
}}
""")

        methods = '\n'.join(methods)
        help = f'\n{self.help}\n' if self.help is not None else ''
        return f"""{self.human_name} {status}.
{help}
The value can be provided in the following ways:
{methods}"""


def get_home_config_path():
    path = os.getenv('XDG_CONFIG_HOME')
    if path is not None:
        path = os.path.join(path, 'ppc/')
    else:
        if platform.system() == 'Darwin':
            path = os.path.expanduser('~/Library/Application Support/ppc/')
        else:
            path = os.path.expanduser('~/.config/ppc/')
    return path


def load_json_config(path):
    if os.path.exists(path):
        try:
            with open(path, 'r') as f:
                data = json.load(f)
            assert isinstance(data, dict), 'Expected a JSON object like {}'
            data = {k: v for k, v in data.items() if v is not None}
            assert all(isinstance(field, str)
                       for field in data.values()), 'Expected string values'
            return data
        except (json.JSONDecodeError, AssertionError) as e:
            sys.exit(
                f'Error while reading configuration file {os.path.abspath(path)}:\n{e}'
            )
    else:
        return {}


class APIError(Exception):
    def __init__(self, status: int, reason: Optional[str], unexpected: bool,
                 message: str):
        self.status = status
        self.reason = reason
        # The error should not occur in normal use and may indicate a bug
        self.unexpected = unexpected
        self.message = message
        super().__init__(message)


class API:
    def __init__(self, url: str, token: str, http_basic_auth: Optional[str]):
        self.url = url.rstrip('/')
        self.token = b64encode(token.encode('utf-8')).decode()
        if http_basic_auth is not None:
            self.http_basic_auth = b64encode(
                http_basic_auth.encode('utf-8')).decode()
        else:
            self.http_basic_auth = None

    def make_json_request(self, url: str, body=None):
        headers = {
            'Content-Type': 'application/json; charset=utf-8',
            'Api-Authorization': f'Basic {self.token}'
        }
        if self.http_basic_auth:
            # Needed for staging environment
            headers['Authorization'] = f'Basic {self.http_basic_auth}'
        request = urllib.request.Request(
            url,
            headers=headers,
        )
        if body is not None:
            data = json.dumps(body).encode('utf-8')
            request.data = data
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
