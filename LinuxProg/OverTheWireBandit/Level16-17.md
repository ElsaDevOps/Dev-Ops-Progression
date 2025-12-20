Objective:
The credentials for the next level can be retrieved by submitting the password of the current level to **a port on localhost in the range 31000 to 32000**. First find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.

**Helpful note: Getting “DONE”, “RENEGOTIATING” or “KEYUPDATE”? Read the “CONNECTED COMMANDS” section in the manpage.**


Solution:

 nmap localhost  -r -sV -p31000-32000

openssl s_client -connect localhost:31790 -quiet

make a private key by copying the RSA key into a new file, and change the file permissons using chmod 400,
then use ssh -i bandit17.key bandit17@bandit.labs.overthewire.org -p 2220


What I learned:

This was another tricky level, had to use the -quiet option to ignore the request for a key update.

Learned how to scan for open ports which speak ssl

learned how to make an ssh private key
