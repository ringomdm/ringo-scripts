#!/bin/bash
#Скачивание пакета
# $4 — share type; "smb" or "webdav"
# $5 — login
# $6 — password
# $7 — share address
# $8 — temp folder
# $9 - package name

if [[ ${4} = "smb" ]]
then
    echo "SMB"
    cd "${8}"
    echo "Checking if the temp directory exists and is currently mounted..."
    if [[ -d tmpSMBMount ]]
    then
        umount -f ./tmpSMBMount
    else
        mkdir tmpSMBMount
        echo "Temp directory created"
    fi
    echo "Mounting SMB..."
    mount_smbfs -o nobrowse //${5}:${6}@${7} ./tmpSMBMount
    if [[ ! $? = 0 ]]
    then
        echo "Mount failed, exiting..."
        exit 1
    fi
    echo "Copying package..."
    cp "${8}/tmpSMBMount/shortcut/Books/Apple/${9}" "${8}"
    echo "Unmounting..."
    umount -f ./tmpSMBMount
    echo "Done."
elif [[ ${4} = "webdav" ]]
then
    echo "WebDAV"
    cd "${8}"
    curl -u ${5}:${6} ${7}/Packages/${9} -o ${9}
fi