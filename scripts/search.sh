#!/bin/sh

if [ -z "$2" ]; then
    echo "usage: $0 filename_wildcard search_term"
    exit 1
fi

find . -iname $1 -exec grep -H $2 {} \;
