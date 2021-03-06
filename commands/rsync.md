# RSYNC

Sync from a remote Directory to a Local Machine

    rsync -avzhP user@192.168.1.1:/remotedir/ /localdir/

----
Sync from a local directory to a remote Directory

    rsync -avzhP /localdir/ user@192.168.1.1:"'/remote dir with spaces example/'"

----
Rsync over SSH

    rsync -avzhP -e ssh user@192.168.1.1:/remotedir/ /localdir/

----
Rsync + Trickle - Controlling the bandwitdh

    rsync -avzhP --rsh="trickle -d 500 -u 500 ssh" user@192.168.1.1:/remotedir/ /localdir/


>-a, It is a quick way of saying you want recursion and want to preserve almost everything.

>-v, Verbose.

>-z, --compress, compresses the file data as it is sent to the destination machine, which reduces  the  amount  of  data being transmitted.

>-h, Human-readable numbers.

>-P, The  -P  option is equivalent to --partial --progress.  Its purpose is to make it much easier to specify these two options  for a long transfer that may be interrupted.

>-e, --rsh=COMMAND, This option allows you to choose  an  alternative  remote  shell program  to  use  for communication between the local and remote copies of rsync. Typically, rsync is configured to use ssh by default, but you may prefer to use rsh on a local network.


trickle

>-d 500 (download max 500k)

>-u 500 (upload max 500k)
