#!/bin/bash
read -p "The time of the last line will be printed from log. Enter the number of lines: " number
read -p "Enter log location: " logfile
tail -n $number $logfile | head -n1 | awk '{print $4}' | sed 's/.//'
