menu
removeCriticToFalsePositive
	
	criticsModel selectedItems
		ifNotNil: [:items | items do: [:item |
			cache removeFalsePositive: item forRule: rule	]].
	
		"self updateList"
	
	"criticsModel selectedItems
		ifNotNil: [:criticss | 
			(criticss groupedBy: [ :each | checker manifestBuilderOf: each]) 
				keysAndValuesDo: [ :key :value |
					self removeAllCriticToFalsePositive: value on: key]].
		self updateList"