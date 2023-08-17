#!/bin/bash
set -e
cd /box
cat > payload.json

set +e
/program/.ppc/grader.py --on-remote "/box/payload.json" "$@" 2>&1
# Hack: Don't pass exit code through so that the job is always considered
# successful. Instead, print the exit code on the last line.
echo -en "\n$?"
