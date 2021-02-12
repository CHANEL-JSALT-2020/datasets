#!/bin/bash
DIR_NAME=$1
TARGET_DIRECTORY=$2
NAME=$3
if [ -n "$2" ]; then
    echo "TARGET_DIRECTORY is set to '$TARGET_DIRECTORY'"
else
    echo "TARGET_DIRECTORY is unset"
    exit 1
fi
if [ -n "$3" ]; then
    echo "NAME is set to '$NAME'"
else
    echo "NAME is unset"
    exit 1
fi
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
