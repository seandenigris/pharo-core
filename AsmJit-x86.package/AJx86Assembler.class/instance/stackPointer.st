register
stackPointer
	^ self is32BitMode ifTrue: [ ESP ] ifFalse: [ SP ]