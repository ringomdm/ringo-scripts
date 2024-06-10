#!/bin/sh
# Статус автоматического обновления времени 

echo "`systemsetup -getusingnetworktime | awk '{print $3}'`"