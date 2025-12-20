There are 2 files in the homedirectory: **passwords.old and passwords.new**. The password for the next level is in **passwords.new** and is the only line that has been changed between **passwords.old and passwords.new**

**NOTE: if you have solved this level and see ‘Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19**

Solution:

 diff  --supress-common-lines passwords.old passwords.new

What I learned:

How to use the diff command to compare the contents of two files, and the --suppress-common-lines option to only output the line that changed