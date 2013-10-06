adding/removing
addFalsePositive: fp withComment: aString of: ruleId version: versionId
	| selector  |
	
	selector := self selectorFalsePositiveOf: ruleId version: versionId. 
	self addItem: fp wihtComment: aString selector: selector.
	
	(self containsToDo: fp onRule: ruleId version: versionId)
		ifTrue: [self removeToDo: fp of:  ruleId version: versionId]. 