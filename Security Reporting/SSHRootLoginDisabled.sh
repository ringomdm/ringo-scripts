#!/bin/sh
#Проверка отключенного рут доступа по ssh
#Укажите желаемый результат - desiredResult
desiredResult="PermitRootLogin no"
result=`cat /etc/ssh/sshd_config | grep -w "$desiredResult" | tail -1`

if [ "$result" == "$desiredResult" ]; then
echo "Pass ($result)"
else
echo "Fail ($result)"
fi
	