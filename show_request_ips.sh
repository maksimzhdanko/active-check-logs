#!/bin/bash
read -p "Enter the number of lines: " number
read -p "Enter log location: " logfile
tail -n $number $logfile | awk '{print $1}' | sort -nr | uniq -c | sort -nr | head -10
