#!/bin/bash
#Установка пакетов
# $4 — full path to installer — required

installer -allowUntrusted -verboseR -pkg "${4}" -target /