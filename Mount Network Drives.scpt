-- From: http://zachmb.com/applescript-to-mount-your-network-drive-if-youre-on-your-home-network-ssid/
-- Notifications uses https://github.com/alloy/terminal-notifier
-- Save this as an Application, and add it to your Login Items

set SSID to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk '/ SSID: / {print $2}'"

if SSID is "í ¼í½”í ¼í½Ÿ" then
	tell application "Finder"
		try
			mount volume "afp://Bruce._afpovertcp._tcp.local/TV Shows"
			mount volume "afp://Bruce._afpovertcp._tcp.local/Downloads"
			do shell script "/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -message 'Network Drives Mounted' -title 'Bruce' -group 'Bruce'"
		end try
	end tell
end if