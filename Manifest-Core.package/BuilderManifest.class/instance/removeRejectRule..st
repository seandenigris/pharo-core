adding/removing
removeRejectRule: ruleId 

	|  nfp |	
	nfp := manifestClass rejectRules asOrderedCollection.
	nfp remove: ruleId ifAbsent: [^ self].
	
	nfp := nfp asArray.
	manifestClass class 
		compile: (self class rejectRulesTag, Character cr asString, '^ ', nfp asString)
		classified: 'meta data'
	