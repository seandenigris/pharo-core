manifest
dateOfFalsePositive: aItem onRule: ruleId version: versionId
	| ringobject dateAndTime critics|

	 (self hasFalsePositiveOf: ruleId version: versionId)
		ifFalse: [^ self].
	
	 ringobject := aItem asRingDefinition. 
	critics := manifestClass perform: (self selectorFalsePositiveOf: ruleId version: versionId).

	dateAndTime := (critics detect: [:each | ((Smalltalk at: (each first first)) manifestReadOn:  (each first at:2))  =  ringobject ]) at: 2.
	
	
	^ dateAndTime asDateAndTime
		
		