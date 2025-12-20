#!/bin/bash


mkdir Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

if [ -f "Battlefield/knight.txt" ]; then
   mkdir  -p Archive
   mv Battlefield/knight.txt Archive/
   echo "knight.txt moved to Archive."
else
   echo "Knight not found."
fi

echo "Archive contents:"
ls Archive 

echo "Battlefield contents"
ls Battlefield