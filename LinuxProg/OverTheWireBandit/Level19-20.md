
Objective:
To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

Solution:
./bandit20-do --help

./bandit20-do cat  /etc/bandit_pass 

cd /etc/bandit_pass

ls -l

cd ~

./bandit20-do cat /etc/bandit_pass/bandit20

What I learned:

How to change users in order to read a file