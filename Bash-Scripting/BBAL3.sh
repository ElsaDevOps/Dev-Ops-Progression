#!/bin/bash

file="hero.txt"

if [ -e /Arena/$file  ]; then
   echo "Hero found!"
else
   echo "Hero missing!"
fi