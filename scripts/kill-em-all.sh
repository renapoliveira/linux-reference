#Kill all logged SSH sessions
w | awk 'NR > 2 {print $2 " " $3}' | grep -v :0 | awk '{ print "ps -ef | grep sshd: | grep "$1 }' | sh | grep -v grep | awk '{print "kill " $2}' | sh
