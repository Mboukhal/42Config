#!/bin/bash

while [[ $1 -eq 1 ]]
do
	ping -c 5 www.google.com 
	sleep 20
done
