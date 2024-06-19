#!/bin/sh
#Энергосбережение. Время отключения дисплея

echo "`/usr/bin/pmset -g | grep -w displaysleep | awk '{print $2}'`"	