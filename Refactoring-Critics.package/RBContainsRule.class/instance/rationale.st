accessing
rationale
	^ 'Checks for the common code fragment: "(aCollection detect: [:each | ''some condition''] ifNone: [nil]) ~= nil". contains: can simplify this code to "aCollection contains: [:each | ''some condition'']". Not only is the contains: variant shorter, it better signifies what the code is doing.'