visiting rb nodes
acceptSequenceNode: aSequenceNode 
	self visitTemporaries: aSequenceNode temporaries.
	aSequenceNode statements do: [:each | self visitNode: each]