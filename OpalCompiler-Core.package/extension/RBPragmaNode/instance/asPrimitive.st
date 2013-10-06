asPrimitive
	| args module name spec |
	args := (self arguments collect: [ :each | each value ]) asArray.
	self isPrimitive
		ifFalse: [ IRPrimitive null ].
	args first isString
		ifTrue: [ 
			name := args first.
			module := args at: 2 ifAbsent: [ nil ].
			spec := {(module ifNotNil: [ module asSymbol ]). name asSymbol. 0. 0}.
			^ IRPrimitive new
				num: 117;
				spec: spec;
				yourself ]
		ifFalse: [ 
			^ IRPrimitive new
				num: args first;
				spec: nil;
				yourself ]