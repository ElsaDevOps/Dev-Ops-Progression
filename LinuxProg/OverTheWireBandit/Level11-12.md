Objective:

The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

Solution:

strings data.txt | tr "N-ZA-Mn-za-m" "A-Za-z"

What I learned:

I learned about encrypting data using a cipher such as ROT13, and how to use the key to decode the data using the tr command.