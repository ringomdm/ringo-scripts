#!/bin/sh
desiredValue="30"

result=""
tmpResult="`/usr/bin/pmset -g | grep -w displaysleep | awk '{print $2}'`"
if [ "$tmpResult" == "$desiredValue" ]; then
result="true"

elif [ "$tmpResult" == "" ]; then
result="Domain or Key Not Found"
else

result="$tmpResult"	

fi
if [ "$result" == "true" ]; then
echo "Pass ($tmpResult)"
else
echo "Fail ($tmpResult)"
fi
	