private
hasEqualTicks: aDateAndTime
	
	^ (julianDayNumber = aDateAndTime julianDayNumber)
		and: [ (seconds = aDateAndTime secondsSinceMidnight)
			and: [ nanos = aDateAndTime nanoSecond ] ]
