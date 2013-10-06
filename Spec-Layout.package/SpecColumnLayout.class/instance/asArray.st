converting
asArray
	| size result currentOffset  numberOfProportionals currentProportional delta lastFractionIndex height |
	self flag: #toFix. "This method is a giant: strange name, huge logic"
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	result add: self type.
	size := self commands size.
	numberOfProportionals := 0.
	lastFractionIndex := 0.
	self commands do: [:e |
		e layoutFrame hasNoOffsets
			ifTrue: [ numberOfProportionals := numberOfProportionals +1 ]].
	
	numberOfProportionals isZero
		ifTrue: [ delta := 0 ]
		ifFalse: [ delta := 1/numberOfProportionals ].
	
	self commands doWithIndex: [:e :idx |
		e layoutFrame hasNoOffsets
			ifTrue: [ "fractions"
				e layoutFrame:  ((0@currentProportional corner: 1@(currentProportional +delta)) asLayoutFrame topOffset: currentOffset ).
				currentOffset := 0.
				currentProportional := currentProportional + delta.
				lastFractionIndex := idx ]
			ifFalse: [ "offsets"
				height := e bottomOffset - e topOffset.
				idx = size
					ifTrue: [
						e layoutFrame: ((0@1 corner: 1@1) asLayoutFrame
													 topLeftOffset: e leftOffset @ height negated;
													 bottomRightOffset:  e rightOffset@0)]
					ifFalse: [
						e layoutFrame: ((0@currentProportional corner: 1@currentProportional) asLayoutFrame
									topLeftOffset: e leftOffset@currentOffset ; 
									bottomRightOffset:  e rightOffset@ (currentOffset + height)).
						currentOffset := (currentOffset + height) ]]].
			
	(lastFractionIndex > 0 and: [ lastFractionIndex < size ])
		ifTrue: [ | index ante |
			index := size - 1.
			[ index > lastFractionIndex ] whileTrue: [ | myHeight |
				ante := self commands at: index.
				index := index -1.
				myHeight := ante bottomOffset - ante topOffset.
				ante 
					topOffset: (height+myHeight) negated; 
					bottomOffset: height negated.
				height := height+myHeight ].
			
			self assert: (index = lastFractionIndex).
			ante := self commands at: index.
			ante bottomOffset: height negated ].		
			
	(self commands reject: [:e | e isSplitter ]) do: [:e |
		| left right bottom top windowBorderWidth |
		windowBorderWidth := self class windowBorderWidth.
		left := e leftOffset.
		right := e rightOffset.
		bottom := e bottomOffset.
		top := e topOffset.
		
		e rightFraction = 1 ifTrue: [ 
			right isZero 
				ifTrue: [ e rightOffset: windowBorderWidth negated ]
				ifFalse: [ e rightOffset: right - ProportionalSplitterMorph splitterWidth ]].
		e leftFraction = 0
			ifTrue: [ 
				left isZero 
					ifTrue: [ e leftOffset: windowBorderWidth ]
					ifFalse: [ e leftOffset: left + ProportionalSplitterMorph splitterWidth ]]
			ifFalse: [ e leftFraction = 1 ifFalse: [
						e leftOffset: left + ProportionalSplitterMorph splitterWidth]].

		e bottomFraction = 1 ifTrue: [ 
			bottom isZero
				ifTrue: [ e bottomOffset: windowBorderWidth negated ]
				ifFalse: [ e bottomOffset: bottom - ProportionalSplitterMorph splitterWidth ]].
		e topFraction = 0
			ifTrue: [ 
				top isZero 
					ifTrue: [ e topOffset: windowBorderWidth ]
					ifFalse: [ e topOffset: top + ProportionalSplitterMorph splitterWidth ]]
			ifFalse: [ e topFraction = 1 ifFalse: [
						e topOffset: top + ProportionalSplitterMorph splitterWidth]].
		
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
	
	(self commands select: [:e | e isSplitter ]) do: [:e |
		e generateArguments.
			e asSpecElements do: [:el |
				result add: el ]].
		
	result add: #checkSplitters.
	
	^ result asArray