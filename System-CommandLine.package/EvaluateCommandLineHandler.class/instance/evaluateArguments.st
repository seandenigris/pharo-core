activation
evaluateArguments
	| args |
	args := ((self arguments size > 1 and: [ self arguments first = '--save' ])
		ifTrue: [ self arguments allButFirst ]
		ifFalse: [ self arguments ]) joinUsing: Character space.
	args ifEmpty: [ ^ self ].
	self evaluate: args