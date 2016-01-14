#!/bin/bash
oldIFS="$IFS"
IFS=$'\n'

array=($(networksetup -listallhardwareports | awk '/^Hardware Port:/{gsub("^Hardware Port: ","");print}'))

for interface in "${array[@]}"
do
networksetup -setwebproxystate "${interface}" off
networksetup -setsecurewebproxystate "${interface}" off
done

IFS="${oldIFS}"




