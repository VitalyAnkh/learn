import ppcgrader.config


class Config(ppcgrader.config.Config):
    def __init__(self, code: str):
        from . import info
        super().__init__(binary='prereq',
                         gpu=False,
                         cfg_file=__file__,
                         info=info,
                         code=code)

    def parse_output(self, output):
        time = None
        errors = None
        input_data = {}
        output_data = {}
        output_errors = {}
        statistics = {}
        triples = []
        size = None
        for line in output.splitlines():
            what, *rest = line.split('\t')
            if what == 'result':
                errors = {'fail': True, 'pass': False, 'done': False}[rest[0]]
            elif what == 'time':
                time = float(rest[0])
            elif what == 'perf_wall_clock_ns':
                time = int(rest[0]) / 1e9
                statistics[what] = int(rest[0])
            elif what.startswith('perf_'):
                statistics[what] = int(rest[0])
            elif what in ['error_magnitude', 'threshold']:
                output_errors[what] = float(rest[0])
            elif what in ['ny', 'nx', 'y0', 'x0', 'y1', 'x1']:
                input_data[what] = int(rest[0])
            elif what == 'avg':
                output_data[what] = [float(x) for x in rest]
            elif what == 'size':
                size = rest[0]
            elif what == 'triple':
                triples.append([float(x) for x in rest])
        if size == "small":
            nx = input_data["nx"]
            ny = input_data["ny"]
            assert len(triples) == nx * ny
            input_data["data"] = [
                triples[i * nx:(i + 1) * nx] for i in range(ny)
            ]
        return time, errors, input_data, output_data, output_errors, statistics
