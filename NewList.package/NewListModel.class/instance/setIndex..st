morphic
setIndex: idx

	pluggable 
		ifTrue: [
			idx = index
				ifTrue: [ index := 0 ]
				ifFalse: [ index := idx ].
			self changed: #getIndex ].