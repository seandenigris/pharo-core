explorePointers
	self selectionIndex = 0 ifTrue: [^ self changed: #flash].
	Smalltalk tools pointerExplorer openOn: self selection