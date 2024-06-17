#!/bin/sh
#Удаленный вход ssh/sftp
echo "`/usr/sbin/systemsetup -getremotelogin | awk '{print $3}'`"