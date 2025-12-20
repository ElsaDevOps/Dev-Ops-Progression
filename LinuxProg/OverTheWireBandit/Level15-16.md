The password for the next level can be retrieved by submitting the password of the current level to **port 30001 on localhost** using SSL/TLS encryption.

**Helpful note: Getting “DONE”, “RENEGOTIATING” or “KEYUPDATE”? Read the “CONNECTED COMMANDS” section in the manpage.**



Solution:
  man s_client

  man openssl-s_client

openssl s_client -connect localhost:30001

What I learned:

How to connect to an SSL server using openssl and s_client commands.