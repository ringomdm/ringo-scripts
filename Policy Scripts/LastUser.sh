#!/bin/sh
#Последний залогиненный пользователь
lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`

if [ $lastUser == "" ]; then
	echo "No logins"
else
	echo "$lastUser"
fi