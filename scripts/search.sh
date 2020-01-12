#!/bin/sh

usage() {
    echo
    echo "$0 - Find a string in files matching the wildcard specification"
    echo
    echo "    Usage: $0 filename_wildcard search_term"
    echo
    exit 1
}

if [ -z "$2" ]; then
    echo "ERROR: No arguments supplied"
    usage
fi

find . -iname $1 -exec grep -H $2 {} \;
