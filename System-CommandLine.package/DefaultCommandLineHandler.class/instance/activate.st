activation
activate
	self arguments ifEmpty: [ ^ self ].
	
	^ self handleArgument: self arguments first.