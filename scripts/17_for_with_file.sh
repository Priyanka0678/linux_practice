#!/bin/bash

# Getting values from file names.txt
FILE="/home/priyanka/names.txt"

for name in $(cat $FILE)
do
    if [ "$name" == "Priyanka" ]; then
        echo "Hello $name"
    else
        echo "Hii $name"
    fi
done

