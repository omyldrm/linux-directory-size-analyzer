#!/bin/bash

directory=$1

fileCount(){
    # Count only the immediate subfolders (exclude the directory itself)
    du -h --max-depth=1 -- "$directory" 2>/dev/null | tail -n +2 | wc -l
}

if [ -z "$directory" ] || [ ! -d "$directory" ]
then
    echo "Error: start the script with a folder as parameter"
    exit 1
else
    du -h --max-depth=1 -- "$directory" 2>/dev/null | sort -hr | awk '{print $2, "->", $1}'
    echo "$(fileCount) folders found"
fi
