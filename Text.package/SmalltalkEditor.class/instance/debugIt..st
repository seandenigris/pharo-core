editing keys
debugIt: aKeyboardEvent
	"Evaluate the current selection in the Debugger."

	UsersManager default currentUser canDebug ifFalse: [ ^ false ].
	self debugIt.
	^ true