#!/bin/bash

read FILE

if [ -d $FILE ]
then
    exit 1
elif [ -f $FILE ]
then
    exit 0
else
    exit 2
fi
