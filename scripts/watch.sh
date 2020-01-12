#!/bin/bash

usage() {
    echo
    echo "$0 - Watch poller for systems without watch"
    echo
    echo "    Usage: $0 command [sleep_interval]"
    echo
    exit 1
}

if [ -z "$1" ]; then 
    usage
elif [ -z "$2" ]; then
    INTERVAL=1
else
    INTERVAL=$2
fi

while :;
    do
    clear
    date
    $1
    sleep $INTERVAL
done
