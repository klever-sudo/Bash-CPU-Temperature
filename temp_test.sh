#!/bin/bash

#This simple script prints out the CPU temperature in Celsius and Farenheit

TEMP_FILE=/sys/class/thermal/thermal_zone0/temp

TEMP_O=$(cat $TEMP_FILE)
TEMP_C=$((TEMP_O/1000))
TEMP_F=$(($TEMP_C * 9/5 + 32))
echo $TEMP_C C
echo $TEMP_F F
