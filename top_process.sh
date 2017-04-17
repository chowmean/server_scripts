#!/bin/bash 
if [ "$1" == "" ]; then
    echo "Enter the number of process to search. Default is 10"
    number=10
else
	number="$1"
fi


if [ "$2" == "" ]; then
    echo "Enter pattern in second params."
fi


ps aux | grep "$2"| awk '{print $3,$2,$4,$9,$11}' | sort -rn | head -n "$number"
