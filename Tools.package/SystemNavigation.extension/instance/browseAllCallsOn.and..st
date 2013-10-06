*Tools-Browser
browseAllCallsOn: literal1 and: literal2 
	"Create and schedule a message browser on each method that calls on the 
	two Symbols, literal1 and literal2. For example, SystemNavigation new 
	browseAllCallsOn: #at: and: #at:put:."

	
	^ self browseAllSendersOf: literal1 and: literal2 