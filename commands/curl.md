# CURL

----

Download multiple consecutive numbered files.

    curl -O -f -L http://192.168.1.126/bash/file[1-10].log
    curl -O -f -L http://192.168.1.126/bash/file[001-011].log

>-O, --remote-name - write output file

>-f, --fail - Fail  silently (no output at all) on server errors.

>-L, --location - if the server reports that the requested page has moved to a different location this option will make curl redo the request on the new place.

----
Resume Download

    curl -O -L -C - http://192.168.1.1/Test-4.11.iso
    curl -O -L --noproxy '*' -C - http://192.168.1.1/Test-4.11.iso/tmp/test/" $1}' | sh

>-C, --continue-at <offset> - Use "-C -" to tell curl to automatically find out where/how to resume the transfer. It  then  uses  the  given  output/input files to figure that out.

>--noproxy <no-proxy-list> - Comma-separated  list  of  hosts  which do not use a proxy, if one is specified.  The only wildcard is a single * character, which matches all hosts, and effectively disables the proxy.

>-#, --progress-bar - Make curl display progress as a simple progress bar instead of the standard, more informational, meter.
