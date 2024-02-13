#!/bin/bash
# $4 — printer name — required
# $5 — printer URI (e.g. lpd://10.10.10.10 or smb://prntsrv/printr in cases of AD-binded macs) — required
# $6 - PPD file path
# $7 — location

if [[ ${6} == "" ]]
then
    ppd="/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Resources/Generic.ppd"
else
    ppd=${6}
fi

/usr/sbin/lpadmin -p "${4}" -v "${5}" -P "${ppd}" -L "${7}" -E