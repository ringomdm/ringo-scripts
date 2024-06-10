#!/bin/sh
#Энергосбережение. Время отключения дислпея

echo "`/usr/bin/pmset -g | grep -w displaysleep | awk '{print $2}'`"	