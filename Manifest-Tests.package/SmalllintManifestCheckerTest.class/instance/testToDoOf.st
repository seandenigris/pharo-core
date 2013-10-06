tests
testToDoOf

	| smc  rule |
	
	rule  := RBCompositeLintRule allGoodRules.

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  self package. 
	
	self assert: (( smc toDoOf: RBOnlyReadOrWrittenTemporaryRule new) anySatisfy: [:each| each = (MFClassB>>#method3)]).
	self deny: (( smc toDoOf: RBOnlyReadOrWrittenTemporaryRule new) anySatisfy: [:each| each = (MFClassB>>#method2)]).