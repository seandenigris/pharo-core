managing accessors
removeAccessor: aSelector
	methodDict at: aSelector ifAbsent: [ ^ self ].
	self removeSelector: aSelector.
	

	