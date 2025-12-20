Objective:
The password for the next level is stored in the file **data.txt** next to the word **millionth**

Solution:
Initially, what I did was use the vim text editor and search the word millionth using /millionth , then using the n key to navigate the file.

A better way I could have done this is to use the strings command, specifically using:

strings data.txt | grep "millionth"

This method is much faster than navigating the file manually.

What I learned:

How to navigate the vim text editor

How to use the strings command

How to think in a more efficient way "How could I make this process faster?"
