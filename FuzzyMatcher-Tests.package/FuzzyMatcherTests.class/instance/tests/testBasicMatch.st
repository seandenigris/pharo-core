testBasicMatch

	| fuzzy |
	
	fuzzy := self newFuzzer.
	fuzzy setPattern: 'a'.
	
	self 
	assert: (fuzzy matches: 'a');
	assert: (fuzzy matches: ' 
	pewrklesnrlkn�09 a');
	assert: (fuzzy matches: ',mskldmaewlj34kla').