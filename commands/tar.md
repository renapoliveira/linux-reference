# TAR

Compress using gzip.

    tar -czvf file.tar.gz file/dir

>-c, --create

>-z, --gzip, --gunzip --ungzip

>-v, --verbose

>-f, --file ARCHIVE

----
Compress using bzip2.

    tar -cjvf file.tar.bz2 file/dir

>-c, --create

>-j, --bzip2

>-v, --verbose

>-f, --file ARCHIVE

----
Extract gzip file.

    tar -xzvf file

>-x, --extract, --get

>-z, --gzip, --gunzip --ungzip

>-v, --verbose

>-f, --file ARCHIVE

----
Extract bzip2 file.

    tar -xjvf file

>-x, --extract, --get

>-j, --bzip2

>-v, --verbose

>-f, --file ARCHIVE

----
List contents.

    tar -tvf file

>-t, --list
