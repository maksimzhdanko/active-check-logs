#!/bin/bash
read -p "Enter the number of lines: " number
read -p "Enter log location: " logfile
tail -n $number $logfile | awk '{print $1}' | sort -nr | uniq -c | sort -nr | head -10
for i in `tail -n $number $logfile | awk '{print $1}' | sort -nr | uniq -c | sort -nr | head -10 | awk '{print $2}'`; do echo -e "$i - \c" && whois $i | grep -i country | awk '{print $2}'; done
