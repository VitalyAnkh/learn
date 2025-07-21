import os
from typing import Dict, List, Optional, Tuple, TYPE_CHECKING
from ppcgrader.compiler import Compiler, find_clang_compiler, find_gcc_compiler, find_nvcc_compiler
from ppcgrader.runner import RunnerOutput
from ppcgrader.api_tools import EnvProperty, get_home_config_path, load_json_config

if TYPE_CHECKING:
    from ppcgrader.reporter import Reporter
    from types import ModuleType


def _make_source(binary: str, gpu: bool):
    return f"{binary}.cu" if gpu else f"{binary}.cc"


def _get_base_dir(cfg_file: str):
    return os.path.dirname(cfg_file)


class Config:
    def __init__(self,
                 *,
                 binary: str,
                 cfg_file: str,
                 code: str,
                 info: "ModuleType",
                 gpu: bool = False,
                 openmp: bool = False):
        self.source: str = _make_source(binary, gpu)
        self.binary: str = binary
        self.base_dir: str = _get_base_dir(cfg_file)
        self.tester: str = os.path.join(self.base_dir, 'tester.cc')
        self.demo: Optional[str] = None
        self.gpu: bool = gpu
        self.openmp: bool = openmp
        self.ignore_errors: bool
        self.nvprof: bool = False
        self.export_streams: bool = False
        self.on_remote: bool
        self.test_flag = '--test'
        self.info_module = info
        self.code = code

        self.demo_binary: str = f"{self.binary}-demo"
        self.demo = os.path.join(self.base_dir, 'demo.cc')
        self.default_demo = []
        if not os.path.exists(self.demo):
            self.demo = None

        self.env_api_url: EnvProperty
        self.env_api_token: EnvProperty
        self.env_http_basic_auth: EnvProperty
        self.env_remote_grader: EnvProperty
        self.env_version: EnvProperty
        self.env_remote_max_timeout: EnvProperty

    def test_command(self, test: str) -> List[str]:
        return [os.path.join('./', self.binary), self.test_flag, test]

    def benchmark_command(self, test: str) -> List[str]:
        return [os.path.join('./', self.binary), test]

    def demo_command(self, args: List[str]) -> List[str]:
        if len(args) == 0:
            args = self.default_demo

        return [os.path.join('./', self.demo_binary)] + args

    def common_flags(self, compiler: Compiler) -> Compiler:
        include_paths = [
            os.path.join(self.base_dir, 'include'),
            os.path.normpath(os.path.join(os.path.dirname(__file__),
                                          'include'))
        ]
        for include_path in include_paths:
            if self.gpu:
                compiler = compiler.add_flag('-I', include_path)
            else:
                compiler = compiler.add_flag('-iquote', include_path)

        if self.openmp:
            compiler = compiler.add_omp_flags()

        return compiler

    def demo_flags(self, compiler: Compiler) -> Compiler:
        raise NotImplementedError

    def demo_post(self, output: str, reporter: "Reporter"):
        pass

    def find_compiler(self) -> Optional[Compiler]:
        if self.gpu:
            return find_nvcc_compiler()
        else:
            return find_gcc_compiler() or find_clang_compiler()

    def parse_output(self,
                     output: str) -> Tuple[float, bool, Dict, Dict, Dict]:
        raise NotImplementedError

    def format_output(self, output: RunnerOutput) -> Optional[str]:
        raise NotImplementedError

    def explain_terminal(self, output: RunnerOutput, color=False) -> str:
        if self.info_module is not None and hasattr(self.info_module,
                                                    'explain_terminal'):
            return self.info_module.explain_terminal(output, color)
        else:
            return ("I'm sorry, I cannot provide additional information.\n"
                    "Please report this incident to the course staff.")

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
        self.env_remote_max_timeout = EnvProperty(sources,
                                                  'remote_max_timeout',
                                                  'remote_max_timeout',
                                                  path=False,
                                                  home=False)

    # commonly used utilities
    def _demo_flags_png(self, compiler: Compiler) -> Compiler:
        compiler = self.common_flags(compiler)
        compiler = compiler.add_library("png")
        return compiler

    def _demo_post_png(self, output: str, reporter: "Reporter"):
        from ppcgrader.reporter import TerminalReporter
        if not isinstance(reporter, TerminalReporter):
            return

        try:
            from PIL import Image
            _, name, _ = output.split("'", maxsplit=2)
            img = Image.open(name)
            img.show()
        except ImportError:
            reporter.log(
                "Could not display image because PIL could not be imported.",
                'error')
            reporter.log("Please open the generated image manually.", 'log')
            reporter.log(output, 'log')
