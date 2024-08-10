#!/bin/bash

#check for OS since my macOS is too old for curl :(

OS=$(uname -s)
TIME=$(date "+%Y-%m-%d %H:%M:%S")


if [ "$OS" = "Darwin" ]; then
	echo "macOS detected"
	read -p "Enter your location: " LOCAL
	wget wttr.in/"$LOCAL"
	cat "$LOCAL"
	echo "Current time is: $TIME"
fi




