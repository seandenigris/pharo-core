squeak protocol
todayAtNanoSeconds: nanoSecondsSinceMidnight

	"This is usually only during system startup..."
	| offset nanoSecondsSinceMidnightUTC |
	self waitForOffsets.

	offset := self localOffset.
	nanoSecondsSinceMidnightUTC := nanoSecondsSinceMidnight - offset asNanoSeconds.
	^ self basicNew
			setJdn: DaysSinceEpoch 
			seconds: (nanoSecondsSinceMidnightUTC // 1000000000) 
			nano: (nanoSecondsSinceMidnightUTC  \\ 1000000000) 
			offset: offset
 