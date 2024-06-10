#!/bin/sh
# Статус фаервола
result=`/usr/bin/defaults read /Library/Preferences/com.apple.alf globalstate`
if [ "$result" == "0" ]; then
	echo "Off"
else
	echo "On"
fi