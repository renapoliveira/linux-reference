# TAR

Fast compression using xz (level -6).

    tar -cJvf file.tar.xz file/dir

>-c, --create

>-J, --xz

>-v, --verbose

>-f, --file ARCHIVE

----
Best xz compression (level -9e).

    tar -cvf file.tar file/dir ; xz -9e file.tar

>-c, --create

>-v, --verbose

>-f, --file ARCHIVE

>-9e, -9 preset level, --extreme

----
Compress using gzip (level -6).

    tar -czvf file.tar.gz file/dir

>-c, --create

>-z, --gzip, --gunzip --ungzip

>-v, --verbose

>-f, --file ARCHIVE

----
Best gzip compression (level -9).

    tar -cvf file.tar file/dir ; gzip -9 file.tar

>-c, --create

>-v, --verbose

>-f, --file ARCHIVE

>-9, -9 preset level

----
Compress using bzip2 (level -6).

    tar -cjvf file.tar.bz2 file/dir

>-c, --create

>-j, --bzip2

>-v, --verbose

>-f, --file ARCHIVE

----
Best bzip2 compression (level -9).

    tar -cvf file.tar file/dir ; bzip2 -9 file.tar

>-c, --create

>-v, --verbose

>-f, --file ARCHIVE

>-9, -9 preset level

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
