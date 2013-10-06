manifest
dateOfTruePositive: aItem onRule: ruleId version: versionId
	| ringobject dateAndTime critics|

	 (self hasFalsePositiveOf: ruleId version: versionId)
		ifFalse: [^ self].
	
	 ringobject := aItem asRingDefinition. 
	critics := manifestClass perform: (self selectorTruePositiveOf: ruleId version: versionId).

	dateAndTime := (critics detect: [:each | (Object readFrom: (each first)) =  ringobject ]) at: 2.
	
	
	^ dateAndTime asDateAndTime
		
		