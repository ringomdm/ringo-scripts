#!/bin/sh
#Статус Spotlight
launchAgent=""
menuBar=""
indexingStatus=`/usr/bin/mdutil -s / | grep "Indexing"`

if [ -f "/System/Library/LaunchAgents/com.apple.Spotlight.plist" ]; then
launchAgent="true"
else
launchAgent="false"
fi

if [ -d "/System/Library/CoreServices/Spotlight.app" ]; then
menuBar="true"
elif [ -d "/System/Library/CoreServices/Search.bundle" ]; then
menuBar="true"
else
menuBar="false"
fi

if [ "$launchAgent" == "true" ] || [ "$menubar" == "true" ] || [ "indexingStatus" == "Indexing enabled." ]; then
echo "menuBar: $menuBar LaunchAgent: $launchAgent indexing status: $indexingStatus  -  Spotlight Enabled"
else
echo "Spotlight Disabled"
fi
	