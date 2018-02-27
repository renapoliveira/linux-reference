# WGET

The main advantage of wget compared to curl is the recursive download of a directory.

    wget -r --no-parent --reject="index.html*" robots=off 192.168.1.126/bash/

>-r, --recursive - Turn on recursive retrieving. The default maximum depth is 5.

>--no-parent - Do not ever ascend to the parent directory when retrieving recursively.  This is a useful option, since it guarantees that only the files below a certain hierarchy will be downloaded.

>--no-proxy - Do not use proxies, even if the appropriate *_proxy environment variable is defined.

>-reject - Rejects index.html* files
robots=off - Ignores robots.txt
