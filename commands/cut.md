UT

----

Get all users in the system, sort and show them.

    cut -d: -f1 < /etc/passwd | sort | xargs echo
    cat /etc/passwd | cut -d : -f 1 | sort | xargs echo

>-d - delimiter

>-f - Field number

----
Get all users in the system and create a file for each one.

    cat /etc/passwd | cut -d : -f 1 | awk '{print "touch /tmp/users/" $1}' | sh

