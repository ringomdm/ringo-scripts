#!/bin/sh
# Список сетевых устройств
echo "`/usr/sbin/networksetup -listallnetworkservices 2>&1`"
