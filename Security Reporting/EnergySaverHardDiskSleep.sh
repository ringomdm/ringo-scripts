#!/bin/sh
#Энергосбережение. Время отключения диска

echo "`/usr/bin/pmset -g | grep -w disksleep | awk '{print $2}'`"