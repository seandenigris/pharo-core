menu
addClassToFalsePositive
	| class |
	
	criticsModel selectedItems ifNotNil: [ :items |
		items do: [ :critic |
			class := critic isCompiledMethod 
				ifTrue: [  critic methodClass]
				ifFalse: [critic].
			cache addFalsePositiveClass: class.
			]]
	
	