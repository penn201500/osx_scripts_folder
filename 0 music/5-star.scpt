-- script to set rating to 5 stars
-- star ratings by increments of 20
set theRating to 100 -- 5 stars

tell application "Music"
	set theOldRating to rating of current track
	set rating of current track to theRating
	
    display notification "Rating set to " & (theRating div 20) & " stars from " & (theOldRating div 20) & "." with title "Rating changed"

end tell
