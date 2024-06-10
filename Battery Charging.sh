#!/bin/sh

echo "$(ioreg -r -c "AppleSmartBattery" | grep -w "IsCharging" | awk '{print $3}' | sed s/\"//g)"