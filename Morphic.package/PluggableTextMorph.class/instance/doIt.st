menu commands
doIt

	UsersManager default currentUser canEvaluateCode ifFalse: [ ^ false ].
	self handleEdit: [textMorph editor evaluateSelection]