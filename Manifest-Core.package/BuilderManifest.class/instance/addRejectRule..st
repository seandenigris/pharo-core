adding/removing
addRejectRule: ruleId 

	|  nfp |	
	nfp := manifestClass rejectRules asSet.
	nfp add: ruleId.
	nfp := nfp asArray.
	manifestClass class compile: 
		(self class rejectRulesTag, Character cr asString, '^ ', nfp asString)
		classified: 'meta data'
	