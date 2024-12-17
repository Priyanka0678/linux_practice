#!/bin/bash
echo "Script name is: $0"

echo "First argument: $1"
echo "Second argument: $2"

echo "Total number of arguments passed: $#"

echo "Using \$*: $*"
echo "Using \$@: $@"

echo "Process ID of this script: $$"

ls /home/priyanka
echo "Exit status of 'ls /home/priyanka': $?"

ls /home
echo "Exit status of 'ls /home': $?"

sleep 1 &
echo "Background process ID: $!"

echo "Last argument of the last command: $_"



