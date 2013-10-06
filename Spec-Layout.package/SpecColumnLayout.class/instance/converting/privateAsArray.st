privateAsArray
	| size result currentOffset  numberOfProportionals currentProportional delta lastFractionIndex height autoFractionComputation |
	self flag: #toFix. "This method is a giant: strange name, huge logic"
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	size := self commands size.
	numberOfProportionals := 0.
	lastFractionIndex := 0.
	autoFractionComputation := true.
	self commands do: [:e |
		e layoutFrame hasNoOffsets
			ifTrue: [ 
				(e layoutFrame topFraction == 0 and: [  e layoutFrame bottomFraction == 1 ]) ifFalse: [ autoFractionComputation := false ].
				numberOfProportionals := numberOfProportionals +1 ]].
	
	autoFractionComputation not
		ifTrue: [ 
			self commands doWithIndex: [:e :idx |
				e layoutFrame hasNoOffsets
					ifTrue: [ "fractions"
						delta := e layoutFrame bottomFraction - e layoutFrame topFraction.
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
								currentOffset := (currentOffset + height) ] ] ] ]
		ifFalse: [
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
								currentOffset := (currentOffset + height) ] ] ] ].
					
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
			
	result addAll: super privateAsArray.
	
	^ result asArray