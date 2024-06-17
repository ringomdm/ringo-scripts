#!/bin/sh
#Используемый сервер времени
echo "`systemsetup -getnetworktimeserver | awk '{print $4}'`"