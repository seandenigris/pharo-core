protocol
update: aSymbol

	 aSymbol = getEnabledSelector
		ifTrue: [ ^ self updateEnabled ].
		
	aSymbol = getValueSelector 
		ifTrue: [ ^ self updateValue ].
		
	aSymbol = getLabelSelector 
		ifTrue: [ ^ self updateLabel ].