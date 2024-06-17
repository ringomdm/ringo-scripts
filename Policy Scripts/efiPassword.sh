#!/bin/bash
#Установка/удаление пароля прошивки
# $4 — mode; "set" to set or reset the firmware password, "remove" to the firmware password — required
# $5 - password — required if $4 is "set"

architecture=$(uname -p)
if [[ ${architecture} == "arm" ]]
then
    echo "This architecture doesn't support firmware password. Exiting..."
    exit 1
elif [[ ${4} == "set" ]]
then
    /usr/bin/expect <<EOD
    spawn -c firmwarepasswd -setpasswd
    expect "*?assword:"
    send "${5}\n"
EOD
elif [[ ${4} = "remove" ]]
then
    firmwarepasswd -delete
fi