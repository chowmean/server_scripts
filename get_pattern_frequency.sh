#!/bin/bash

if [ "$1" == "" ]; then
    echo "Enter the file name to be searched as first param"
    exit 1
fi

if [ "$2" == "" ]; then
    echo "Enter the pattern to be searched as second param"
    exit 1
fi

cat "$1" | grep "$2" | awk '{print $1}' |  sort -n | uniq -c | sort -rn | head
exit 0