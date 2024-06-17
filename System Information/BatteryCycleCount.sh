#!/bin/sh
#Количество циклов зарядки батареи
echo "$(system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')"