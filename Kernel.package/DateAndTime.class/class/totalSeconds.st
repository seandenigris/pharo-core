system queries
totalSeconds
	"Answer the total seconds since the Squeak epoch: 1 January 1901 in UTC"

	^ Time totalSeconds - (self localOffset asSeconds)