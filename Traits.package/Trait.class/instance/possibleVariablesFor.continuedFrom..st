compiling
possibleVariablesFor: misspelled continuedFrom: oldResults

	| results |
	results := misspelled correctAgainstDictionary: self classPool continuedFrom: oldResults.
	^ misspelled correctAgainstDictionary: self environment continuedFrom: results.
		