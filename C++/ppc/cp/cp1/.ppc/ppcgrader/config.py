import os
import sys
import json
import platform
from typing import Dict, List, Optional, Tuple
from ppcgrader.compiler import Compiler
from ppcgrader.runner import RunnerOutput


class Config:
    def __init__(self):
        self.source: str
        self.binary: str
        self.tester: str
        self.gpu: bool
        self.ignore_errors: bool
        self.nvprof: bool = False
        self.export_streams: bool
        self.on_remote: bool

        self.env_api_url: EnvProperty
        self.env_api_token: EnvProperty
        self.env_http_basic_auth: EnvProperty
        self.env_remote_grader: EnvProperty
        self.env_version: EnvProperty

        raise NotImplementedError

    def test_command(self, test: str) -> List[str]:
        raise NotImplementedError

    def benchmark_command(self, test: str) -> List[str]:
        raise NotImplementedError

    def common_flags(self, compiler: Compiler) -> Compiler:
        raise NotImplementedError

    def find_compiler(self) -> Optional[Compiler]:
        raise NotImplementedError

    def parse_output(self,
                     output: str) -> Tuple[float, bool, Dict, Dict, Dict]:
        raise NotImplementedError

    def format_output(self, output: RunnerOutput) -> Optional[str]:
        raise NotImplementedError

    def explain_terminal(self, output, color=False):
        raise NotImplementedError

    def collect_env(self, home_config_path=None):
        sources = {}
        sources['path'] = load_json_config('config.json')
        if home_config_path is None:
            home_config_path = get_home_config_path()
        sources['home_path'] = home_config_path
        sources['home'] = load_json_config(
            os.path.join(home_config_path, 'config.json'))
        sources['factory'] = load_json_config('.ppc/factory_config.json')

        self.env_api_url = EnvProperty(sources,
                                       'api_url',
                                       'API URL',
                                       env='PPC_API_URL')
        self.env_api_token = EnvProperty(
            sources,
            'api_token',
            'API token',
            env='PPC_API_TOKEN',
            factory=False,
            help=
            "Visit https://ppc-exercises.cs.aalto.fi/token to obtain an API token for your account.",
        )
        self.http_basic_auth = EnvProperty(
            sources,
            'http_basic_auth',
            'HTTP basic authorization',
            env='PPC_HTTP_BASIC_AUTH',
        )
        self.env_remote_grader = EnvProperty(sources,
                                             'remote_grader',
                                             'remote grader name',
                                             home=False)
        self.env_version = EnvProperty(sources,
                                       'version',
                                       'version',
                                       path=False,
                                       home=False)


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
