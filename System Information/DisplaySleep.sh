#!/bin/sh
#Время отключения дисплея
echo "`/usr/bin/pmset -g 2>&1 | grep displaysleep | awk '{print $2}'`"
	