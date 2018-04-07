-- SET YOUR CONFIG NAME BELOW
set tunnelBlickConfigName to "YOURCONFIGNAME"
tell application "Tunnelblick"
	set vpnState to get state of first configuration where name = tunnelBlickConfigName
	if vpnState = "CONNECTED" then
		return "VPN - Connected"
	end if
	return "VPN - Disconnected"
end tell