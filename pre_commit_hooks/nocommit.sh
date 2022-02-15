#!/bin/sh

set -eu

KEYWORD=${1:-NOCOMMIT}

if git diff --cached | grep "^[+d].*$KEYWORD"; then
    echo "Won't commit: added a line containing $KEYWORD"
    exit 1
fi
