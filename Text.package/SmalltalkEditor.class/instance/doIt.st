do-its
doIt
	"Set the context to include pool vars of the model.  Then evaluate."
	UsersManager default currentUser canEvaluateCode ifFalse: [ ^ false ].
	^ self evaluateSelection