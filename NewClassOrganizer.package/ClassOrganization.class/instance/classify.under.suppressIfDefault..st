backward compatibility
classify: aMethod under: aProtocolName suppressIfDefault: aBoolean

	^ self protocolOrganizer 
			classify: aMethod 
			inProtocolNamed: aProtocolName 
			suppressIfDefault: aBoolean