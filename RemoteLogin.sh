#!/bin/sh

echo "`/usr/sbin/systemsetup -getremotelogin | awk '{print $3}'`"

	