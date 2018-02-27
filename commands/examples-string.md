# Examples using strings

1. File /tmp/city contains string
2. CITY="Toronto"
3. I need to return the city name only

----
Example using cut.

    cat /tmp/city | grep "CITY" | cut -d = -f 2 | sed 's/"//g'

----
Example using awk

    cat /tmp/city | grep "CITY" | awk -F "=" '{print $2}' | sed 's/"//g'

Both will return Toronto
