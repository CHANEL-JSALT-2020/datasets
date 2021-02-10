#!/bin/bash
DATASET_NAME=$1
SRC_ROOT=../azure
TARGET_DIR=$2
chmod +x check_dataset.sh
if [ -d $SRC_ROOT ]; then
    if [ "$DATASET_NAME" == "0DBDC3" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "0DBDC3"
        unrar e $SRC_ROOT/0DBDC3.rar $TARGET_DIR/0DBDC3/
    elif [ "$DATASET_NAME" == "cornell" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "cornell"
        unrar e $SRC_ROOT/CORMOV.part1.rar $TARGET_DIR/cornell/
        # part2 is chained to part1
    elif [ "$DATASET_NAME" == "daily_dialog" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "daily_dialog"
        unrar e $SRC_ROOT/DAILYD.rar $TARGET_DIR/daily_dialog/
    elif [ "$DATASET_NAME" == "emotion_lines" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "emotion_lines"
        unrar e $SRC_ROOT/ELINES.rar $TARGET_DIR/emotion_lines/
    elif [ "$DATASET_NAME" == "meena" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "meena"
        unrar e $SRC_ROOT/MEENAD.rar $TARGET_DIR/meena/
    elif [ "$DATASET_NAME" == "meldme" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "meldme"
        unrar e $SRC_ROOT/MELDME.rar $TARGET_DIR/meldme/
    elif [ "$DATASET_NAME" == "metalwoz" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "metalwoz"
        unrar e $SRC_ROOT/METALW.rar $TARGET_DIR/metalwoz/
    elif [ "$DATASET_NAME" == "moviedic" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "moviedic"
        unrar e $SRC_ROOT/MOVDIC.part1.rar $TARGET_DIR/moviedic/
    elif [ "$DATASET_NAME" == "empathic" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "empathic"
        unrar e $SRC_ROOT/MPATHY.part1.rar $TARGET_DIR/empathic/
    elif [ "$DATASET_NAME" == "persona_chat" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "persona_chat"
        unrar e $SRC_ROOT/PERCHT.part1.rar $TARGET_DIR/persona_chat/
    elif [ "$DATASET_NAME" == "sentiment_liar" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "sentiment_liar"
        unrar e $SRC_ROOT/STLIAR.rar $TARGET_DIR/sentiment_liar/
    elif [ "$DATASET_NAME" == "switchboard" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "switchboard"
        unrar e $SRC_ROOT/SWBCOH.rar $TARGET_DIR/switchboard/
    elif [ "$DATASET_NAME" == "wochat" ]; then
        ./check_dataset.sh $SRC_ROOT ../extracted_dataset "wochat"
        unrar e $SRC_ROOT/WOCHAT.rar $TARGET_DIR/wochat/  
    else
        echo "No dataset with name $DATASET_NAME found"
    fi
else
    echo "Dataset "$SRC_ROOT" not found. Please download again from https://github.com/CHANEL-JSALT-2020/datasets.git"
fi
echo "Extraction Complete"