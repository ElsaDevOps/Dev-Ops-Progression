#!/bin/bash

line_reader(){
   local file="$1"
 if [[ -f "$file" ]]; then
   echo "Number of lines: "
   cat $file | wc -l 
else
   echo "No file provided"
fi
}
line_reader log.txt