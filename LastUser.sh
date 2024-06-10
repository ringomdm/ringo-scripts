#!/bin/sh
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`

if [ $lastUser == "" ]; then
	echo "No logins"
else
	echo "$lastUser"
fi