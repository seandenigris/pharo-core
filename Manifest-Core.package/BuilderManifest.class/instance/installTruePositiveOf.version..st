manifest
installTruePositiveOf: ruleId version: versionId
	"self installFalsePositiveForRule: 1 "
	
	manifestClass class 
		compile: ((self selectorTruePositiveOf: ruleId version: versionId) asString, '^ #()')
		classified: 'meta data'