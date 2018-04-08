set mySSID to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'"
if mySSID = "           SSID: " then
	return ""
end if
return mySSID as string
