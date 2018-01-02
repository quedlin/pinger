#!/bin/bash

while true; do

	timestamp="$(date +'%Y-%m-%d %H:%M:%S')"

	if ping -n 1 google.com &> /dev/null
	then
	  echo "$timestamp;1" >> pingdata-$(date +'%Y-%m-%d').log
	else
	  echo "$timestamp;0" >> pingdata-$(date +'%Y-%m-%d').log
	fi
	
	sleep 1m
	
done
