initialize

	super initialize.

	actionHolder := [] asValueHolder.
	labelHolder := '' asValueHolder.
	iconHolder := nil asValueHolder.
	stateHolder := false asValueHolder.
	helpHolder := nil asValueHolder.
	actionPerformedHolder := nil asValueHolder.
	askBeforeChangingHolder := false asValueHolder.
	
	labelHolder whenChangedDo: [	self changed: #label ].
	iconHolder whenChangedDo: [	self changed: #label ].
	stateHolder whenChangedDo: [	self changed: #state ].
	enabledHolder whenChangedDo: [	self changed: #enabled ].
	askBeforeChangingHolder whenChangedDo: [:newValue | self changed: { #askBeforeChanging: . newValue} ].
	
		
	self bindKeyCombination: Character space toAction: [ self action ].