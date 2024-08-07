#!/bin/bash

#not yet optimized

arr=(2 5 8 11 14) #indices for checking colons

read -p "Input MAC Address of device: " BLUETOOTH_DEVICE

for (( i=0; i<${#BLUETOOTH_DEVICE}; i++ )); do
        char="${BLUETOOTH_DEVICE:$i:1}"

        if [ $char -ge 65 && $char -le 90 ] || [ $char -ge 97 && $char -le 122 ] ||   [ $char -ge 48 && $char -le 57 ]; then
		continue

	fi	
		
	
	for (( j=0; j<${#arr}; j++ )); do
		if [ $i == ${arr[$j]} && $char == 58 ]; then 
			continue
		fi
	done


	break
done
	
		



{

	echo "power on"
	echo "agent on"
	echo "scan on"
	sleep 5
	echo "pair $BLUETOOTH_DEVICE"
	sleep 5
	echo "trust $BLUETOOTH_DEVICE"
	sleep 5
	echo "connect $BLUETOOTH_DEVICE"
	sleep 5
	echo "quit"
} | bluetoothctl

spotify &

sleep 10

playerctl play
