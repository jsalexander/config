#!/bin/sh

if [ -z "$1" ]; then
    echo "Pretty-printer for JSON files"
    echo "    usage: $0 filename"
    exit 1
fi

cat $1 | python -m json.tool

