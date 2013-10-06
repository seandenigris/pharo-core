adding/removing
addToDo: fp withComment: aString  of: ruleId version: versionId
	| selector |
	
	selector := self selectorToDoOf: ruleId version: versionId. 
	self addItem: fp wihtComment: aString  selector: selector.
	
	(self containsFalsePositive: fp onRule: ruleId version: versionId)
		ifTrue: [self removeFalsePositive: fp of:  ruleId version: versionId ]