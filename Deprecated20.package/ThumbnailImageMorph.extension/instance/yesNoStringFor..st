*deprecated20
yesNoStringFor: aBool
	"Answer the string to be shown in a menu to represent the  
	yes/no status"
	self deprecated: 'use an Association instead of a string concatenation 'on: '22 April 2012' in: 'Pharo20'.
	^ (aBool
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		