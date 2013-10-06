manifest
commentOfFalsePositive: aItem onRule: ruleId version: versionId
	| ringobject critic critics|

	 (self hasFalsePositiveOf: ruleId version: versionId)
		ifFalse: [^ self].
	
	 ringobject := aItem asRingDefinition. 
	critics := manifestClass perform: (self selectorFalsePositiveOf: ruleId version: versionId).

	critic := critics detect: [:each | ((Smalltalk at: (each first first)) manifestReadOn:  (each first at:2))  =  ringobject ]
		 ifNone: [^ ''].
	
	^ (critic size = 3)	
		ifTrue: [(critic at: 3) asString]
		ifFalse: ['']
		