#!/bin/sh
desiredValue="2m"

targetPath="/etc/ssh/sshd_config"
targetParameter="LoginGraceTime"

if [ -f "$targetPath" ]; then
result="`cat \"$targetPath\" | grep -w \"^$targetParameter\"| awk {'print $2'}`"
if [ "$result" == "$desiredValue" ]; then
	echo "Pass ($result) "
else
	echo "Fail ($result) "
fi
else
echo "File or Directory (\"$targetPath\") does not exist."
fi
	