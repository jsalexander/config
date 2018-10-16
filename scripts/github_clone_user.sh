#!/bin/sh

usage() {
    echo "$0 - Downloads all repos from a specified user"
    echo
    echo "    Usage: $0 user"
    echo
    exit 1
}

if [ $# -eq 0 ]
then
    echo "ERROR: No arguments supplied"
    usage
fi

mkdir $1
cd $1
curl -s https://api.github.com/users/$1/repos?per_page=100 | ruby -rjson -e 'JSON.load(STDIN.read).each {|repo| %x[git clone #{repo["clone_url"]} ]}'
cd ..

