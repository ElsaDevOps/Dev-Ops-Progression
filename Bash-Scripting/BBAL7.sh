#!/bin/bash


file_sorter(){
    local dir="$1"
if [ -e "$dir" ]; then
    echo "Files sorted!:"
    cd $dir
    ls -lShr 
elif [ ! -e "$dir" ]; then
   echo "No directory provided."
fi
}
file_sorter "Arena"
