adding/removing
addAllFalsePositive: fp of: ruleId version: versionId
	| selector  |
	
	selector := self selectorFalsePositiveOf: ruleId version: versionId. 
	self addAllItem: fp selector: selector.
	
	(self containsToDo: fp onRule: ruleId version: versionId)
		ifTrue: [self removeToDo: fp of:  ruleId version: versionId]. 