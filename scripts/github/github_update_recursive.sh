#!/bin/sh

CUR_DIR=$(pwd)

# Find all git repositories and update it to the master latest revision
for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo $i;

    # We have to go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    # finally pull
    git pull origin master;

    # lets get back to the CUR_DIR
    cd $CUR_DIR
done

