if application "iTunes" is running then
	tell application "iTunes"
		if player state is playing then
			set trackName to (get artist of current track) & " – " & (get name of current track)
			set strLength to the length of trackName
			if strLength > 30 then
				set trackName to text 1 thru 27 of trackName
				return trackName & "..."
			end if
			return trackName
		else
			return "iTunes - Nothing playing"
		end if
	end tell
end if
return ""