socketIsConnected
	^ socket isConnected and: [ socket isOtherEndClosed not ]