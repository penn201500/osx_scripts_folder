tell application "Safari"
	set URL_list to ""
	repeat with i in (every tab of window 1)
		set URL_list to URL_list & return & URL of i
	end repeat
	
	set the clipboard to URL_list
	URL_list
end tell