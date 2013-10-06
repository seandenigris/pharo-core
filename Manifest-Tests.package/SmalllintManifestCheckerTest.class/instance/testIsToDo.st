tests
testIsToDo

	| smc  rule |
	
	rule  := RBCompositeLintRule allGoodRules.

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  self package. 
	
	self assert: (smc isToDo:  (MFClassB>>#method3) forRuleId: (RBOnlyReadOrWrittenTemporaryRule uniqueIdentifierName) versionId:  1).
	self deny: (smc isToDo:  (MFClassB>>#method2) forRuleId: (RBOnlyReadOrWrittenTemporaryRule uniqueIdentifierName) versionId:  1).
