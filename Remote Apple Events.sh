#!/bin/sh

echo "`/usr/sbin/systemsetup -getremoteappleevents | awk '{print $4}'`"