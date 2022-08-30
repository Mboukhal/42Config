local index1, index2

set index1 to 3 -- 1920 x 1200
set index2 to 4 -- 1280 x 800

-- Launch "System Preferences", open the "Displays" options and change to the "Display" tab
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.displays"
	reveal anchor "displaysDisplayTab" of pane id "com.apple.preference.displays"
end tell

local indexToUse

-- Now lets make the necessary changes
tell application "System Events"
	tell window "SyncMaster" of application process "System Preferences" of application "System Events"
		tell tab group 1
			
			-- Click the "Scaled" radio button
			click radio button "Scaled"
			
			tell radio group 1 of group 1
				-- Depending on what scale option/index is current selected, set the appropriate new option/index to use
				if (value of radio button index1) is true then
					set indexToUse to index2
				else if (value of radio button index2) is true then
					set indexToUse to index3
				else
					set indexToUse to index1
				end if
				
				-- Click the radio button for the new scale option/index
				click radio button indexToUse
			end tell
			
		end tell
		
		-- If option/index 1 is selected a warning prompt is displayed, click the OK button to dismiss the prompt
		if indexToUse = 1 then
			click button "OK" of sheet 1
		end if
	end tell
end tell

-- Quit "System Preferences"
quit application "System Preferences"
