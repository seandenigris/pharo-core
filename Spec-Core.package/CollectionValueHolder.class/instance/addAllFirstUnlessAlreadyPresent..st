protocol
addAllFirstUnlessAlreadyPresent: anOrderedCollection
	
	| result |
	result := contents addAllFirstUnlessAlreadyPresent: anOrderedCollection.
	self contentsChanged: anOrderedCollection.
	^ result