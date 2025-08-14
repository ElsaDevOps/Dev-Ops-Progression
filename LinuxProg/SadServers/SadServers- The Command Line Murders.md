
**Scenario:** "The Command Line Murders"

**Level:** Easy

**Description:** This is the [Command Line Murders](https://github.com/veltman/clmystery) with a small twist as in the solution is different  
  
Enter the name of the murderer in the file _/home/admin/mysolution_, for example echo "John Smith" > ~/mysolution  
  
Hints are at the base of the _/home/admin/clmystery_ directory. Enjoy the investigation!

**Test:** md5sum ~/mysolution returns 9bba101c7369f49ca890ea96aa242dd5  
  
(You can always see _/home/admin/agent/check.sh_ to see how the solution is evaluated).

**Time to Solve:** 20 minutes.

**OS:** Debian 11

Working:

cd clmystery

cd mystery

ls

grep "CLUE" crimscene

grep "Annabel" people

cd streets

head -n 179 Buckingham_place | tail -n 1

cd interviews

cat interview-699607

cd ..

#At this point I didn't know how to search for the specific properties so I used hints 6 and 7 to find the correct commands to use

grep -A 5 "L337" vehicles

#At this point I had to search through and find the car and person who matched the description given in the clues and from the interview

Correct answer:

echo "Joe Germuska" > ~/mysolution

#Checked my answer using the command provided

md5sum ~/mysolution

#Output is 9bba101c7369f49ca890ea96aa242dd5 which means my answer is correct!

What I learned:

How to apply the grep command with different options

Practiced using the head and tail commands

Practiced navigating through different directories

Practiced using cat command and directing output to the terminal
