#!/bin/bash
#Включение шифрования диска FileVault
# $4 — number of prompts at login before force encryption — required

fdesetup enable -forceatlogin ${4}