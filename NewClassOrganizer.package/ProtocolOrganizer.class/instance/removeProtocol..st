protocol - removing
removeProtocol: aProtocol

	aProtocol canBeRemoved
		ifFalse: [ ProtocolRemovaleException signal ].
	
	^ protocols remove: aProtocol