# Screen flickering on Intel graphics using Debian 9

----

see [BUG 878221](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=878221)

----
## Problem
The screen starts flickering after typing for a while.

----
## Solution
Update the kernel 4.9.0-4 to 4.9.0-6.

    apt-get install linux-image-4.9.0-6-amd64

Then reboot the OS.

    reboot

