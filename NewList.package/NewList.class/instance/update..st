updating
update: aSymbol

	aSymbol == #getItems 				ifTrue: [ ^ self updateItems ].
	aSymbol == #getListSize 				ifTrue: [ ^ self updateListSize ].
	aSymbol == #getHeaderTitle 			ifTrue: [ ^ self updateHeaderTitle ].
	aSymbol == #iconMaxSize 				ifTrue: [ ^ self updateIconMaxSize ].
	aSymbol == #iconForItem:at: 			ifTrue: [ ^ self updateIconCache ].
	aSymbol == #resetSelectedIndexes 	ifTrue: [ ^ self deselectAll ].
	aSymbol == #invalidateIcons 			ifTrue: [ ^ self invalidateIconCache ]