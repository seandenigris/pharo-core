event handling
keyStroke: event
	"Pass on to the list."

	event keyCharacter = Character escape ifTrue: [ self hideList ].
	(self navigationKey: event) ifTrue: [^self].
	self listMorph keyStroke: event 