# FIND

Find the first 100 files in the parent directory starting with name "log" and ignoring extensions ".zip" and ".xml", then, remove all of them.

Example using xargs.

    find /home/dir/ -maxdepth 1 -type f -name "log*" ! -name "*.zip" ! -name "*.xml" | head -n 100 | xargs rm -f

Example using awk and sh.

    find /home/dir/ -maxdepth 1 -type f -name "log*" ! -name "*.zip" ! -name "*.xml" | head -n 100 | awk '{print "rm -f "$1}' | sh

>-maxdepth - Tree hierarchy

>-type - Type of ocurrences, f to file, d to directories

>-name - Name patterns

Remove files with white space in the name.

    find . -maxdepth 1 -name "file*" -print0 | xargs -0 rm -f

