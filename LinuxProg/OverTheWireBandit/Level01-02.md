Objective:
The password for the next level is stored in a file called **-** located in the home directory

Commands used:
cat
cd

Solution:
You can't just use the command 'cat -' alone, because cat will wait for further user input. So, when you navigate to the home directory using cd /home, you must use the less than symbol [<] to redirect the output onto the page.

Skills used:
Navigating through directories
Using commands to read files