manifest
installFalsePositiveOf: ruleId version: versionId
	"self installFalsePositiveForRule: 1 "
	
	manifestClass class 
		compile: ((self selectorFalsePositiveOf: ruleId version: versionId) asString, '^ #()')
		classified: 'meta data'