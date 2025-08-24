#!/bin/bash


file_sorter(){
    local dir="$1"
if [ -d "$dir" ]; then
    echo "Files sorted!:"
    cd $dir
    ls -lShr 
elif [ ! -d "$dir" ]; then
   echo "No directory provided."
fi
}
file_sorter "Arena"
