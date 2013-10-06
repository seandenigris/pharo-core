protocol
criticsOf: aRule
	(aRule isNil "or: [aRule isEmpty]" )
		ifTrue: [ ^ {} ].
	
	^ aRule isComposite
		ifTrue: [ aRule leaves gather: [:rule | self criticsOf: rule]]
		ifFalse: [ critics at: aRule ifAbsent: [{}]]