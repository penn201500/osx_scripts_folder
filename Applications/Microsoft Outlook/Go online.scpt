-- simple script to take outlook online.  Can be used with other apps.
tell application "Microsoft Outlook"
	if working offline is true then
		display dialog "Take Microsoft Outlook online?"
		set working offline to false
	end if
end tell