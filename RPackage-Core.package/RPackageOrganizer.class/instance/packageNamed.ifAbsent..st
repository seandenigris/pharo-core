accessing
packageNamed: aSymbol  ifAbsent: errorBlock
	^packages at: (packages keys 
		detect: [ :each | each sameAs: aSymbol ] 
		ifNone: [ ^errorBlock value ]).
	