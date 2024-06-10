#!/bin/sh
desiredValue="On"
result=""
tmpResult="`systemsetup -getusingnetworktime | awk '{print $3}'`"
if [ "$tmpResult" == "$desiredValue" ]; then
	result="true"
else
	result="false"
fi
if [ "$result" == "true" ]; then
	echo "Pass ($tmpResult) "
else
	echo "Fail ($tmpResult) "
fi