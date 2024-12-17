#!/bin/bash

# List files with their size and name
for file in *; do
  if [ -f "$file" ]; then
    size=$(stat --format="%s" "$file")
    echo "$file $size"
  fi
done

