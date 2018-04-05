# TAR

Compress using xz.

    tar -cJvf file.tar.xz file/dir

>-c, --create

>-J, --xz

>-v, --verbose

>-f, --file ARCHIVE

----
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
Extract xz file.

    tar -xJvf file.tar.xz

>-x, --extract, --get

>-J, --xz

>-v, --verbose

>-f, --file ARCHIVE

----
Extract gzip file.

    tar -xzvf file.tar.gz

>-x, --extract, --get

>-z, --gzip, --gunzip --ungzip

>-v, --verbose

>-f, --file ARCHIVE

----
Extract bzip2 file.

    tar -xjvf file.tar.bz2

>-x, --extract, --get

>-j, --bzip2

>-v, --verbose

>-f, --file ARCHIVE

----
List contents.

    tar -tvf file

>-t, --list
