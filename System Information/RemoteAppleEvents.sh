#!/bin/sh
#Удаленное выполнение событий/скриптов
echo "`/usr/sbin/systemsetup -getremoteappleevents | awk '{print $4}'`"