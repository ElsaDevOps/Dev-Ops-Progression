Objective:

The password for the next level is stored in **/etc/bandit_pass/bandit14 and can only be read by user bandit14**. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. **Note:** **localhost** is a hostname that refers to the machine you are working on



Solution:
ssh -i "sshkey.private" bandit14@localhost -p 2220
 cd /etc
  ls
 cd bandit_pass
 ls
 cat bandit14

What I learned:
Logging into SSH instances using passkeys to log in as a different user