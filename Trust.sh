#!/bin/sh

desiredResult="PermitRootLogin no"
result=`cat /etc/ssh/sshd_config | grep -w "$desiredResult" | tail -1`

if [ "$result" == "$desiredResult" ]; then
echo "<result>Pass ($result)</result>"
else
echo "<result>Fail ($result)</result>"
fi
	