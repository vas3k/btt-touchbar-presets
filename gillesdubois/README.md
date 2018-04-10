# How to setup touchbar

This touchbar require some dpendencies to work properly i will list them below to help you to install to as easly as possible :)

This touchbar preset have nothing made by me apart from the VPN script. Everything had been taken from other existing presets i just changed some behavior :

1. Clicking on iTunes track doesn't trigger next track but put iTunes in foreground
2. Now playing doesn't hide when nothing play
3. Weather system used is darksky (which i find move conveniant)
4. Use locateme (homebrew package) to determine the current location

The VPN widget is using TunnelBlick. I might develop it to be compatible with more VPN Client (openvpn cli directly ?)

1. The VPN widget is red when not connected, it turn green when connected
2. When disconnected : You can tap on it to connect to your VPN
2. When connected : You can tap on it to disconnect

## 1. Dependencies used

1. HomeBrew -> https://brew.sh/index_fr
2. locateme -> brew install locateme
3. JSON Helper -> https://itunes.apple.com/ru/app/json-helper-for-applescript/id453114608?l=en&mt=12

## 2. API Used

1. https://darksky.net/dev (weather)

NB : You need to sign up to this site and get your api secret. API Limitation is really high, you won't encounter any problems (1000 call each day)

## 3. Setup preset

There is two widgets that won't work by default :
1. Weather
2. VPN 

You need to setup them dependending on your needs.

### 4. Weather Widget

You need to update the script by clicking on "Advanced Configuration"

You will see this line of code :

```
set weather to fetch JSON from ("https://api.darksky.net/forecast/YOUR_API_KEY_HERE/" & latLon & "?exclude=minutely,hourly,daily,alerts,flags&units=si")
```

You will have to replace "YOUR_API_KEY_HERE" by the api secret you get by signing up to https://darksky.net/dev

You might have to allow locateme to check your location when the weather is checked for the first time.

### 5. VPN Widget

You need to update the script by clicking on "Advanced Configuration" :

You will see this line of code :

```
-- SET YOUR CONFIG NAME BELOW
set tunnelBlickConfigName to "YOUR_CONFIG_NAME_HERE"
```

You need to see the name of the tunnelblick config you want to monitor

The second step is to click on configuration icon next to "Predifined Action" and update the same line of code as above.

## 6. Scripts used 

1. All used script can be found in the "used_apple_scripts" folder.

## 7. Resources used 

1. https://developer.apple.com/library/content/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html
2. https://tunnelblick.net/cAppleScriptSupport.html
3. https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet