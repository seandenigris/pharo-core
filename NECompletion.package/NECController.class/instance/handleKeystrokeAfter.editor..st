keyboard
handleKeystrokeAfter: aKeyboardEvent editor: aParagraphEditor 
	(aParagraphEditor isNil or: [ self isMenuOpen not ])
		ifTrue: [ ^ self ].
		
	aParagraphEditor atCompletionPosition 
		ifFalse: [ ^ self closeMenu ].
	
	self setModel: aParagraphEditor model.
	context narrowWith: aParagraphEditor wordAtCaret.
	menuMorph narrowCompletion.
	context model isEmpty 
		ifTrue: [ ^self closeMenu ]