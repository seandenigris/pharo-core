private
browseCritic

	criticHolder contents
		ifNotNil: [:elem | 
			elem isBehavior 
				ifTrue: [ elem theNonMetaClass  browse]
				ifFalse: [elem browse] ] 