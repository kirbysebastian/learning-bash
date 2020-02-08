#!/usr/bin/bash

function file_count()
{
    DIR=$1

    if [ -d $DIR ]
    then
        local FILES=$(ls $DIR)
    else
        return 1
    fi

    NUM_FILES=$((0))
    for FILE in $FILES
    do
        if [ -f $DIR/$FILE ]
        then
            NUM_FILES=$((NUM_FILES+1))
        else
            return 2
        fi
    done
    echo $DIR:
    echo $NUM_FILES

    return 0
}

file_count $1
