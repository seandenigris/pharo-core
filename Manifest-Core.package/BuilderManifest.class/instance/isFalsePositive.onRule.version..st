manifest
isFalsePositive: aItem onRule: ruleId version: versionId
	| class |
	
	class :=  aItem isCompiledMethod
			ifTrue: 	[aItem methodClass]
			ifFalse: [aItem].
			
	^ ((self containsFalsePositive: aItem onRule:  ruleId version: versionId) or:
			[(self containsRejectedRule: ruleId) or:
				[self containsRejectedClass: class]])