private
okToChange

	list canDiscardEdits ifTrue: [^ true].
	list changed: #wantToChange.  "Solicit cancel from view"
	^ list canDiscardEdits