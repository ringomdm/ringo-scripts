#!/bin/sh
echo "`/usr/bin/pmset -g 2>&1 | grep displaysleep | awk '{print $2}'`"
	