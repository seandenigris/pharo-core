editing keys
doIt: aKeyboardEvent
	"Called when user hits cmd-d.  Select the current line, if relevant, then evaluate and execute.  2/1/96 sw.
	2/29/96 sw: don't call selectLine; it's done by doIt now"
	
	UsersManager default currentUser canEvaluateCode ifFalse: [ ^ false ].
	self doIt.
	^ true