#!/bin/bash

# File name
DATA_FILE="students_data.txt"

# Check if the file exists
if [ ! -f "$DATA_FILE" ]; then
    echo "Error: File '$DATA_FILE' not found."
    exit 1
fi

# Print the Roll_No for the Name "Pradnya"
awk -F "|" '$2 == "Pradnya" {print $2, $3}' "$DATA_FILE"

