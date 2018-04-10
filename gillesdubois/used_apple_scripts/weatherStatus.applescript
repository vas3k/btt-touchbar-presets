-- Create an api key here : https://darksky.net
-- Then add change the URL BELOW
-- You need to install JSON Helper from Apple Store
-- You need to install locateme from brew (https://brew.sh/)
-- More information in readme on github
tell application "JSON Helper"
	set latLon to do shell script "/usr/local/bin/locateme -f '{LAT},{LON}'"
	set weather to fetch JSON from ("https://api.darksky.net/forecast/YOUR_API_KEY_HERE/" & latLon & "?exclude=minutely,hourly,daily,alerts,flags&units=si")
	set temperature to temperature of currently of weather
	set weatherStatus to icon of currently of weather
end tell

if weatherStatus is equal to "clear-day" then
	set myIcon to "☀️"
else if weatherStatus is equal to "clear-night" then
	set myIcon to "🌙"
else if weatherStatus is equal to "partly-cloudy-day" or weatherStatus is equal to "partly-cloudy-night" then
	set myIcon to "⛅️"
else if weatherStatus is equal to "partly-cloudy-night" then
	set myIcon to "☁️🌙"
else if weatherStatus is equal to "cloudy" then
	set myIcon to "☁️"
else if weatherStatus is equal to "rain" then
	set myIcon to "🌧"
else if weatherStatus is equal to "sleet" then
	set myIcon to "⛈"
else if weatherStatus is equal to "fog" then
	set myIcon to "🌫️"
else if weatherStatus is equal to "wind" then
	set myIcon to "🌀"
else if weatherStatus is equal to "snow" then
	set myIcon to "❄️"
else
	set myIcon to weatherStatus
end if

return myIcon & " " & (round (temperature)) & "°C"