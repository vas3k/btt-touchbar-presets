-- SET YOUR CONFIG NAME BELOW
set tunnelBlickConfigName to "YOURCONFIGNAME"
tell application "Tunnelblick"
    set vpnState to get state of first configuration where name = tunnelBlickConfigName
    
    if vpnState = "CONNECTED" then
        disconnect tunnelBlickConfigName
    end if

    if vpnState ≠ "CONNECTED" then
        connect tunnelBlickConfigName
    end if
    
end tell