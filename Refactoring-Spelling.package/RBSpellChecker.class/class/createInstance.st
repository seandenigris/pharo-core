private
createInstance
	^ RBMacSpellChecker isSupported
		ifTrue: [ RBMacSpellChecker new ]
		ifFalse: [ RBInternalSpellChecker new ]