packagePatternString: aStringOrNil
	
	aStringOrNil ifNil: [ ^ self ].
	searchWidget content: aStringOrNil