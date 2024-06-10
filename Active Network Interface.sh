#!/bin/sh

  echo "`/usr/sbin/networksetup -listnetworkserviceorder 2>&1 | grep $(/usr/sbin/netstat -rn 2>&1 | /usr/bin/grep -m 1 'default' | /usr/bin/awk '{ print $4 }') | sed -e "s/.*Port: //g" -e "s/,.*//g"`"

	