There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the password in the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

**NOTE:** Try connecting to your own network daemon to see if it works as you think

Solution:

echo "GbKksEFF4yrVs6il55v6gwY5aVje5f0j" | nc -l 1234 &

./suconnect 1234

What I learned:
How to set up netcat listening ports, and using the ampersand to run a command in the background

using setuid binaries