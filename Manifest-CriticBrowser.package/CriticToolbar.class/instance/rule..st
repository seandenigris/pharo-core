protocol
rule: aRule
	
	ruleHolder contents: aRule.
	
	aRule isTransformationRule 
		ifTrue: [transformModel enabled: true]	
		ifFalse: [transformModel enabled: false]