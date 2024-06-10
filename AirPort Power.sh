#!/bin/sh

	wifiDevice=`/usr/sbin/networksetup -listnetworkserviceorder | grep "Wi-Fi" | sed 's/(Hardware Port\: Wi-Fi, Device\: //g' | grep 'en' | sed 's/)//g'`
	result=`/usr/sbin/networksetup -getairportpower "$wifiDevice" | awk '{print $4}'`

# Ensure that AirPort was found
hasAirPort=`echo "$result" | grep "Error"`

# Report the result
if [ "$hasAirPort" == "" ]; then
	echo "$result"
else
	echo "No AirPort Device Found."
fi