#!/bin/bash

#Getting values from file names.txt


FILE="/home/priyanka/names.txt"

for name in $(cat $FILE)
do
	echo "Hii $name"
done	
