manifest
installToDoOf: ruleId version: versionId
	
	manifestClass class 
		compile: ((self selectorToDoOf: ruleId version: versionId) asString, '^ #()')
		classified: 'meta data'