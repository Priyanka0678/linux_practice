#!/bin/bash
# List with files with their size and name
ls -l --block-size=K | awk '{print $9, $5}'

