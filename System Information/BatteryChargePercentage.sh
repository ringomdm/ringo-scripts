#!/bin/sh
#Уровень зарядка батареи в процентах
maxCapacity=`ioreg -r -c "AppleSmartBattery" | grep -w "MaxCapacity" | awk '{print $3}' | sed s/\"//g`
currentCapacity=`ioreg -r -c "AppleSmartBattery" | grep -w "CurrentCapacity" | awk '{print $3}' | sed s/\"//g`
	
result=$( echo "scale=4; ($currentCapacity / $maxCapacity) * 100" | bc | sed 's/\(.*\)../\1/' )

echo "$result"