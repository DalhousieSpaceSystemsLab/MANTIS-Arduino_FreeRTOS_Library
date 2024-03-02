#!/bin/bash

if [[ $# -lt 1 ]]
then
	echo "Need to specify which port the Arduino is connected to."
	exit 
fi

# Flash the hex file to the arduino board 
avrdude -carduino -P $1 -patmega328p -b57600 -U blink.hex
