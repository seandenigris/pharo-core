source code area
sourceCode

	self removeSourceTextAreaLimit.
	^self selectedClass isNil
		ifTrue: [ self defaultClassDescriptor]
		ifFalse:[ self selectedMethod isNil
				ifTrue: [ self selectedCategory notNil
						ifTrue: [ 
							self putSourceTextAreaLimit.
							self defaultMethodSource]
						ifFalse: [ self selectedClassDescription]]
				ifFalse: [ 
					self putSourceTextAreaLimit.
					self selectedMethodSource]].
		