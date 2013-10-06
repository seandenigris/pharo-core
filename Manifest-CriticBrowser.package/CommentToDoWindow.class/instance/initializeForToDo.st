initialization
initializeForToDo
	self initializeTextForToDo.
	
	okCancelToolBarModel okAction: [ | manifestBuilder rId rV|
		rId :=  rule class uniqueIdentifierName.
		rV :=   rule class identifierMinorVersionNumber.
		manifestBuilder := BuilderManifest of: critic.
		
		(manifestBuilder hasToDoOf: rId version: rV) 
			ifFalse: [manifestBuilder installToDoOf: rId version: rV].
		
		manifestBuilder
			addToDo: critic  withComment:  (commentInputFieldModel getText)  of: rId version: rV]