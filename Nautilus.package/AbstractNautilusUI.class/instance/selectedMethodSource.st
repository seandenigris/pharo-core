source code area
selectedMethodSource

	self selectedMethod
		ifNil: [ ^ '' ]
		ifNotNil: [:method |
			self showSource
				ifTrue: [	^ method sourceCode ].
			self showByteCode
				ifTrue: [	^ method symbolic asText].
			self showDecompile
				ifTrue: [	^  method decompileWithTemps decompileString asText makeSelectorBoldIn: method methodClass ].
			^ 'error']			