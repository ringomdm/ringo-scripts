#!/bin/sh
#Энергосбережение. Ожидание подключения по сети
tmpResult="`/usr/bin/pmset -g | grep -w womp | awk '{print $2}'`"
if [ "$tmpResult" == "1" ]; then
result="On"
else
if [ "$tmpResult" == "0" ]; then
	result="Off"
else
	if [ "$tmpResult" == "" ]; then
		result="Domain or Key Not Found"
	else
		result="$tmpResult"
	fi
fi
fi
echo $result	