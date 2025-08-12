Objective :
 The password for the next level is stored in the only human-readable file in the **inhere** directory. Tip: if your terminal is messed up, try the “reset” command.

Solution: 
cd inhere
ls
file ./"-file07"
cat ./"-file07"


What I learned:
At first I wanted to go through each file individually using the cat function, but I realised that this would take a long time. I then learned how to use the file function to check if the file was human readable (ASCII). I used the skill of finding file names with dashes using the "./" prefix also.

