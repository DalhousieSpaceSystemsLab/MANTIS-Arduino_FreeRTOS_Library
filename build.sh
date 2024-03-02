#!/bin/bash

# Build the blink.c file 
avr-gcc -Wall -mmcu=atmega328p -Os -o blink.bin blink.c

# Convert the bin into a hex file, remove uneeded sections 
avr-objcopy -v -j .text -j .data -O ihex blink.bin blink.hex
