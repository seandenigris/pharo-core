protocol
userNameFor: aGroup

	^ self isUnlocked
		ifTrue: [ (bindings at: aGroup ifAbsent: [ ^ nil ]) username ]