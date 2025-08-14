Objective :The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:

- human-readable
- 1033 bytes in size
- not executable

Solution:

cd inhere

find . -type f -size 1033c ! -executable -readable
   
cd maybehere07
  
ls -l
  
cat < ".file2"

What I learned:
I had to use the man command to learn how to use the find command. I learned how to find files using different options such as -type, -size, -executable and -readable
