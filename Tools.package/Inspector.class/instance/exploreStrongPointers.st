as yet unclassified
exploreStrongPointers
	self selectionIndex = 0 ifTrue: [^ self changed: #flash].
	Smalltalk tools strongPointerExplorer openOn: self selection