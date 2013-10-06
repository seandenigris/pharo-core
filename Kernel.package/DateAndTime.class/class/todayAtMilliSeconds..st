squeak protocol
todayAtMilliSeconds: milliSecondsSinceMidnight

	"This is usually only during system startup...
		[ 100000 timesRepeat: [ self fromMilliSeconds: self milliSecondsSinceMidnight. ] ] timeToRun.
	"
	| offset milliSecondsSinceMidnightUTC |
	
	self waitForOffsets.
	offset := self localOffset.
	milliSecondsSinceMidnightUTC := milliSecondsSinceMidnight - offset asMilliSeconds.
	
	 ^ self basicNew
			setJdn: DaysSinceEpoch 
			seconds: (milliSecondsSinceMidnightUTC // 1000)
			nano: (milliSecondsSinceMidnightUTC  \\ 1000 * 1000000  ) 
			offset: offset