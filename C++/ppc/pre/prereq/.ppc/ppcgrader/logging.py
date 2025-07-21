import sys
import shlex


# Backport from Python 3.8
# https://github.com/python/cpython/blob/3.8/Lib/shlex.py#L314
def shlex_join(split_command):
    """Return a shell-escaped string from *split_command*."""
    return ' '.join(shlex.quote(arg) for arg in split_command)


class Logger:
    def __init__(self):
        self.level = 0
        self.color = sys.stdout.isatty()
        self.enabled = True

    def log_command(self, args, level=1):
        if self.enabled and self.level >= level:
            msg = '>> ' + shlex_join(args)
            if self.color:
                print('\033[34m' + msg + '\033[0m', flush=True)
            else:
                print(msg, flush=True)
            return True
        else:
            return False


logger = Logger()


def set_log_level(level):
    logger.level = level


def set_log_color(enabled):
    logger.color = enabled


def log_command(args, level=1):
    return logger.log_command(args, level)


def set_log_enabled(enabled):
    logger.enabled = enabled
