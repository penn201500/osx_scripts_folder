-- Simple script to get the current link.
tell application "Safari"
	set i to current tab of window 1
	set the clipboard to name of i & ", " & URL of i
	get the clipboard
end tell