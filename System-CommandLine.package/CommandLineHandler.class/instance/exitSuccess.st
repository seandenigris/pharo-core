utility
exitSuccess
	Smalltalk isInteractive 
		ifTrue: [ self inform: self class name, ' finished' ]
		ifFalse: [ Smalltalk exitSuccess ]