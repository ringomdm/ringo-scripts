#!/bin/sh
desiredValue="time.euro.apple.com"

result=""
tmpResult="`systemsetup -getnetworktimeserver | awk '{print $4}'`"
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
	