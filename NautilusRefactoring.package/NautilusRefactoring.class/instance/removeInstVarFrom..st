inst var
removeInstVarFrom: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateRemoveInstVarFrom: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring