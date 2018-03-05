
#LFTP 

Download file using parallel connections. This is useful for slow internet connections.

    lftp -c 'pget -n 10 -c "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.3.0-amd64-netinst.iso"'

>-c, Execute the given commands and exit.

>pget, Builtin command used by lftp.

>pget -n, Number of parallel connections.

>pget -c, Resume download.

