accessing
contents: anObject
	
	| oldValue |
	lock ifTrue: [ ^ self ].
	lock := true.
	oldValue := contents.
	contents := anObject.
	 [ self contentsChanged: oldValue ] ensure: [ lock := false ].
	^ contents