#!/bin/sh

usage() {
    echo
    echo "$0 - Pretty-printer for JSON files"
    echo
    echo "    Usage: $0 filename"
    echo
    exit 1
}

if [ -z "$1" ]; then
    echo "ERROR: No arguments supplied"
    usage
fi

cat $1 | python -m json.tool

