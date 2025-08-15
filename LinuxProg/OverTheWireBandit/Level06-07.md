Objective:

The password for the next level is stored **somewhere on the server** and has all of the following properties:

- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

Solution:
find / -user bandit7 -group bandit6 -size 33c -readable -print -quit 2>/dev/null

#This returns

/var/lib/dpkg/info/bandit7.password

cat < /var/lib/dpkg/info/bandit7.password

#gives the password!

What I learned:

How to use the -group and -user options to search for things that are owned by a specific group and user

using / to search the root directory


using the -print and -quit options to stop searching after finding the item that matches the description

using 2>/dev/null to not output the files that I couldn't access
