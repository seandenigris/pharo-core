converting
asArray

	| result |
	result := OrderedCollection new.
	result add: self type.
				
	self commands do: [:e |
		e asSpecElements do: [:el | result add: el ]].
		
	^result asArray