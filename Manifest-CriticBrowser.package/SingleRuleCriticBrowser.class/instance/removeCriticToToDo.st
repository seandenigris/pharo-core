menu
removeCriticToToDo

		criticsModel selectedItems
		ifNotNil: [:items | items do: [:item |
			cache removeToDo: item forRule: rule	]].
	
		"self updateList"

"	|  ruleId versionId |
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	criticsModel selectedItems 
		ifNotNil: [:criticss | 
			(criticss groupedBy: [:each | checker manifestBuilderOf: each]) 
				keysAndValuesDo: [:manifestBuilder :critis |
					(manifestBuilder hasToDoOf: ruleId version: versionId) 
						ifTrue: [ manifestBuilder removeAllToDo: critis of: ruleId version: versionId]].
	 			].
	
	self updateList"
	 