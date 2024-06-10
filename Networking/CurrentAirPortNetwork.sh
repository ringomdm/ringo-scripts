#!/bin/sh
# Подключенная Wi-Fi сеть
	device=`/usr/sbin/networksetup -listallhardwareports | grep -A 1 Wi-Fi | awk '/Device/{ print $2 }'` 
	result=`/usr/sbin/networksetup -getairportnetwork $device | sed 's/Current Wi-Fi Network: //g'` 


# Ensure that AirPort was found
hasAirPort=`echo "$result" | grep "Error"`

# Report the result
if [ "$hasAirPort" == "" ]; then
	echo "$result"
else
	echo "No AirPort Device Found."
fi
	