#!/bin/sh
#Проверка полного заряда батареи
echo "$(ioreg -r -c "AppleSmartBattery" | grep -w "FullyCharged" | awk '{print $3}' | sed s/\"//g)"