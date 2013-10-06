initialization
initializeTextForToDo

	| ruleId versionId  manifestBuilder|
	manifestBuilder := 	BuilderManifest of: critic.
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	(manifestBuilder hasToDoOf: ruleId version: versionId)
		ifFalse: [^ self] .
	commentInputFieldModel text: ((BuilderManifest of: critic) commentOfToDo: critic onRule: ruleId version: versionId)  