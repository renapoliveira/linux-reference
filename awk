AWK

#List the name and size of all files within a directory sorted by smaller size to bigger size.
ls -lShr /home/rena/Downloads/ | awk '{print $9 "\t" $5}'
