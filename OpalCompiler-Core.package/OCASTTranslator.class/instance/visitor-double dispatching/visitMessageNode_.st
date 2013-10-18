visitMessageNode: aMessageNode
	aMessageNode isInlined ifTrue: [
		methodBuilder addLiteral: aMessageNode selector. "so searching for senders will work"
		^self 
			perform:  ('emit', aMessageNode selector asOneArgSelector capitalized) asSymbol 
			with: aMessageNode].
	^ self emitMessageNode: aMessageNode