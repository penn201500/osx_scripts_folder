tell application "OmniFocus"
	tell content of first document window of front document
		--Get selection
		-- assumes one selection
		set theSel to (selected trees where class of its value is not item and class of its value is not folder)
		-- set theTask to value of item 1 of theSel -- to get the first item in the list; for reference only
		
		-- loop through all items; no error checking!
		repeat with theItem in theSel
			set theTask to value of theItem
			my swapDueDeferDates(theTask)
		end repeat
	end tell
end tell

on swapDueDeferDates(theTask)
	tell application "OmniFocus"
		set theNewDeferDate to due date of theTask
		set theNewDueDate to defer date of theTask
		set defer date of theTask to (theNewDeferDate)
		set due date of theTask to (theNewDueDate)
	end tell
end swapDueDeferDates