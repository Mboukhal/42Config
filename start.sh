#!/bin/bash

#brightness 0.8


FLUPATH="/goinfre/$USER/flutter"

if [[ $1 == 'flutter' ]]
then
	if [ -d "$FLUPATH" ]
	then
		echo "$FLUPATH Alredy exist :) !"
	else
		/Users/mboukhal/script/start_flutter.sh
	fi
	exit
fi

if [[ $1 == 'conda' ]]
then
	/Users/mboukhal/script/install_conda.sh
	exit
fi

if [[ $1 == 's' ]]
then
	osascript ~/script/rs.scpt 4 2> /dev/null 
	cp com.apple.Bluetooth.plist ~/Library/Preferences/
	osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'
	osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/mboukhal/Pictures/2.jpeg"'
	 /Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser https://profile.intra.42.fr/ https://chrome.google.com/webstore/detail/ftblackhole/pofhnleglcpmmkkaohhadcmombagfeie https://chrome.google.com/webstore/detail/42-logtime-darkmode/kkcjiilcfieknbpdhihhhncdbligjplg &
	exit
fi

if [[ $1 == 'vm' ]]
then
	~/script/vm.sh
	sleep 5
	clear
	while ! ssh lio@10.11.43.183
	do
	    echo "Trying again..."
	done
	#ssh lio@10.11.43.183
	exit
fi
echo "start [s, canda, flutter, vm]"

#clear
