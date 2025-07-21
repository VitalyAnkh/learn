#!/usr/bin/env python3

from ppcgrader.cli import cli
import ppcprereq

if __name__ == "__main__":
    cli(ppcprereq.Config(code='prereq'))
