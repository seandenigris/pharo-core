protocol
addClasses: aCollection

	aCollection do: [:e |
		self addBlock: [ e theNonMetaClass methodDict values ].
		self addBlock: [ e theMetaClass methodDict values ]]