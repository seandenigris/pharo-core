editing keys
referencesToIt: aKeyboardEvent
	"Triggered by Cmd-N; browse references to the current selection"

	UsersManager default currentUser canBrowse ifFalse: [ ^ false ].
	self referencesToIt.
	^ true