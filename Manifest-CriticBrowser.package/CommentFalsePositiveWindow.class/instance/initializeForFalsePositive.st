initialization
initializeForFalsePositive
	self initializeTextForFalsePositive.
	
	okCancelToolBarModel okAction: [ | manifestBuilder rId rV|
		rId :=  rule class uniqueIdentifierName.
		rV :=   rule class identifierMinorVersionNumber.
		manifestBuilder := BuilderManifest of: critic.
		
		(manifestBuilder hasFalsePositiveOf: rId version: rV) 
			ifFalse: [manifestBuilder installFalsePositiveOf: rId version: rV].
		
		manifestBuilder
			addFalsePositive: critic  withComment:  (commentInputFieldModel getText)  of: rId version: rV]