Objective:

The password for the next level is stored in the file **data.txt**, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, and rename it using mv (read the manpages!)





Solution:
  
    1  mkdir /tmp/myname
  
    2  cp data.txt/tmp/myname
  
    3  cp data.txt /tmp/myname
   
    4  cd /tmp/myname
 
    5  file data.txt
    
    6  xxd -r data.txt newdata
    
    7  file newdata
    
    8  mv newdata newdata.gz
    
    9  gzip -d newdata.gz
  
    10  file newdata
   
    11  man bzip
   
    12  man bzip2
       
       13  mv newdata newdata.bz
       
       14  mv newdata newdata.bz2
       
       15  mv newdata.bz newdata.bz2
       
       16  bzip2 -d newdata.bz2
       
       17  file newdata
       
       18  mv newdata newdata.bin
       
       19  bin -d newdata.bin
       
       20  mv newdata.bin newdata.gz
       
       21  gzip -d newdata.gz
       
       22  file newdata
       
       23  tar -xvf newdata
       
       24  file data5.bin
       
       25  tar -xvf data5.bin
       
       26  file data6.bin
       
       27  mv data6.bin data7.bz
       
       28  mv data7.bz data7.bz2
       
       29  bzip2 -d data7.bz2
       
       30  file data7
       
       31  tar -xvf data7
       
       32  file data8.bin
       
       33  mv data8.bin data9.gz
       
       34  gzip -d data9.gz
       
       35  file data9
       
       36  cat data9


What I learned:

This was the hardest level, I had to use google for help

I learned how to use the tar, gzip, bzip2 and file commands  and their options to decompress files, check the file type and also change file types.
