#!/bin/bash
DIR_NAME=$1
TARGET_DIRECTORY=$2
NAME=$3
if [ -d $TARGET_DIRECTORY/$NAME ]; then
    read -p "Do you want to rebuild the $NAME dataset? " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        echo "Building $NAME dataset aborted"
        exit 1
    fi
    rm -rf $TARGET_DIRECTORY/$NAME
fi
mkdir -p $TARGET_DIRECTORY/$NAME
