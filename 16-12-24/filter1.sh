#!/bin/bash

# File name
DATA_FILE="students_data.txt"

# Take user input for Name and field to search (Roll_No, Marks, or Subject)
read -p "Enter Name: " NAME
read -p "Roll_No, Marks, Subject: " FIELD

# Validate input
if [ -z "$NAME" ] || [ -z "$FIELD" ]; then
    echo "Error: Both Name and Field are required."
    exit 1
fi

# Using awk to filter and print the required field for the given name
awk -F "|" -v name="$NAME" -v field="$FIELD" '
    BEGIN {
        # Field mapping (skipping header row)
        fieldIndex["Roll_No"] = 3
        fieldIndex["Subject"] = 4
        fieldIndex["Marks"] = 5
    }
    NR == 1 { next }  # Skip header row
    $2 == name {
        if (field == "Marks") {
            print $2, $5
        } else if (field == "Roll_No") {
            print $2, $3
        } else if (field == "Subject") {
            print $2, $4
        }
        found = 1
        exit
    }
    END {
        if (!found) {
            print "No record found for Name: " name
        }
    }
' "$DATA_FILE"

