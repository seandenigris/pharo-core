private
logFalsePositiveInManifest
	|rId rV removeFp addFp|
	
	falsePositives keysAndValuesDo: [:rule :criticss | 
		rId := rule class uniqueIdentifierName.
		rV := rule class identifierMinorVersionNumber.
			
		removeFp :=  (checker falsePositiveOf: rule)  \ criticss.
		addFp :=  criticss \ (checker falsePositiveOf: rule).
		
		(removeFp groupedBy: [:each |  BuilderManifest of: each]) 
			keysAndValuesDo: [:manifestBuilder :value | 
						self removeAllCriticToFalsePositive: value 
							forRule: rule 
							on: manifestBuilder].
					
		(addFp groupedBy: [:each | BuilderManifest of: each]) 
			keysAndValuesDo: [:manifestBuilder :value | 
				(manifestBuilder rejectRules includes: (rule class uniqueIdentifierName))
					ifFalse: [
						self addAllCriticToFalsePositive: value  
							forRule: rule 
							on: manifestBuilder]]
		].