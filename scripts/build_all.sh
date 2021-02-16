#!/bin/bash
TARGET_DIRECTORY="../extracted_dataset"
chmod +x build_dataset.sh
if [ "$#" -ge 1 ]; then
    TARGET_DIRECTORY=$1
    echo "Checking Custom Extract Path... $TARGET_DIRECTORY"
else
    
    echo "Using the default $TARGET_DIRECTORY"
    mkdir -p $TARGET_DIRECTORY
fi

if [ ! -d $TARGET_DIRECTORY ]; then
    read -p "$TARGET_DIRECTORY not found, do you want to create $TARGET_DIRECTORY?" -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
        echo "Dataset Extraction aborted"
        exit 1
    fi
    mkdir -p $TARGET_DIRECTORY
fi

for dataset in 0DBDC3 cornell daily_dialog emotion_lines meena meldme metalwoz moviedic empathic persona_chat sentiment_liar switchboard wochat
    do
        ./build_dataset.sh $dataset $TARGET_DIRECTORY
done
