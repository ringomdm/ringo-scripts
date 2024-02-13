#!/bin/bash
# $4 — mode: "create", "delete" or "resetPassword" — required
# $5 — username — required
# $6 — password — required if $4 is "create" or "resetPassword"
# $7 - full name  — required if $4 is "create"
# $9 — home directory path
# $10 - user mode: "standard" or "admin" — required if $4 is "create"
# $11 — filevault: "disabled" or "enabled" — required if $4 is "create"
# $12 — password hint
# $13 - account avatar path

if [[ ${4} == "create" ]]
then
    sysadminctl -addUser ${5} -fullName ${7} -password ${6} -hint ${12} -home ${9} -admin -picture ${13}
elif [[ ${4} == "delete" ]]
then
    sysadminctl -deleteUser ${5}
elif [[ ${4} == "resetPassword" ]]
then
    sysadminctl -resetPasswordFor ${5} -newPassword ${6}
fi