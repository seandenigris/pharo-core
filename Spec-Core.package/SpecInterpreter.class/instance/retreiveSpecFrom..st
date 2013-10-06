interpreting
retreiveSpecFrom: aSymbol
	| instance aSpec |
	aSpec := ComposableSpec new.
	self class private_interpretASpec: aSymbol model: model superSpec: aSpec.
	aSpec subSpecs do: [:sub |
		sub addAsSubSpecTo: superSpec  ].
	instance :=  (SpecBinder 
			specFor: aSymbol 
			ifAbsent: [ ^ RawSpec new
							defaultReceiver: aSymbol 
							model: model ]) new.
	^ instance 
		model: model;
		yourself