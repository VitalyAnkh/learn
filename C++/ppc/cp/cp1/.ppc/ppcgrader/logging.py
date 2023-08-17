import sys


class Logger:
    def __init__(self):
        self.level = 0
        self.color = sys.stdout.isatty()

    def log_command(self, args, level=1):
        if self.level >= level:
            msg = '>> ' + ' '.join(args)
            if self.color:
                print('\033[34m' + msg + '\033[0m', flush=True)
            else:
                print(msg, flush=True)


logger = Logger()


def set_log_level(level):
    logger.level = level


def set_log_color(enabled):
    logger.color = enabled


def log_command(args, level=1):
    logger.log_command(args, level)
