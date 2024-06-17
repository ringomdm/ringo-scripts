#!/bin/sh
#Оставшееся время работы аккумулятора
echo "$(ioreg -r -c "AppleSmartBattery" | grep -w "TimeRemaining" | awk '{print $3}' | sed s/\"//g)"
	