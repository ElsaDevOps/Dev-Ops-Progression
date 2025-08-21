Objective:

The password for the next level is stored in a file **readme** in the homedirectory. Unfortunately, someone has modified **.bashrc** to log you out when you log in with SSH.

Solution:
 ssh -t bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh

ls

cat readme

What I learned:

How to use the -t option to force a connection to the tty

Using /bin/sh to launch the bash shell instead of the usual bandit18 shell which kept logging me out.
