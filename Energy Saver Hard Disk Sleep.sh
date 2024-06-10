#!/bin/sh
#Желаемое значение
desiredValue="10"

result=""
tmpResult="`/usr/bin/pmset -g | grep -w disksleep | awk '{print $2}'`"
if [ "$tmpResult" == "1" ]; then
result="true"
else
if [ "$tmpResult" == "0" ]; then
	result="false"
else
	if [ "$tmpResult" == "" ]; then
		result="Domain or Key Not Found"
	else
		result="$tmpResult"
	fi
fi
fi
if [ "$result" == "$desiredValue" ]; then
echo "Pass ($result)"
else
echo "Fail ($result)"
fi
	