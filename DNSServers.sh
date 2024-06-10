#!/bin/sh

NetworkInterface=`/usr/sbin/networksetup -listnetworkserviceorder 2>&1 | grep $(/usr/sbin/netstat -rn 2>&1 | /usr/bin/grep -m 1 'default' | /usr/bin/awk '{ print $4 }') | sed -e "s/.*Port: //g" -e "s/,.*//g"`
echo "`/usr/sbin/networksetup -getdnsservers "$NetworkInterface" 2>&1`"
