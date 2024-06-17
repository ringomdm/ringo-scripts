#!/bin/sh
#Проверка наличия батареи
echo "$(ioreg -r -c "AppleSmartBattery" | grep "BatteryInstalled" | awk '{print $3}' | sed s/\"//g)"