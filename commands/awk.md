# AWK

----

List the name and size of all files within a directory sorted by smaller size to bigger size.

    ls -lShr /home/rena/Downloads/ | awk '{print $9 "\t" $5}'

----
Remove all files inside a given directory. awk will print the command and send to be executed by sh

    ls /tmp/test/ | awk '{print "rm -f /tmp/test/" $1}' | sh
