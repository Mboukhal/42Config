#!/bin/bash
# usage: watch.sh <your_command> <sleep_duration>

while :; 
  do 
#  date
  $1 $2
  sleep 3
done
