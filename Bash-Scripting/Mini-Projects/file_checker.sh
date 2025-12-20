#!/bin/bash
file="log.txt"

if [ -f $file  ]; then
   echo "File found!"
   echo "file Permissions:"
          ls -l $file
else
   echo "File missing!"
  
fi