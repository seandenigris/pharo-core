updating
update: aSymbol 
	"Refer to the comment in View|update:."

	(aSymbol == getListSelector or: [ aSymbol == getListElementSelector ]) ifTrue: 
		[self updateList.
		^ self].
	aSymbol == getIndexSelector ifTrue:
		[self selectionIndex: self getCurrentSelectionIndex.
		^ self].
	aSymbol == #allSelections ifTrue:
		[self selectionIndex: self getCurrentSelectionIndex.
		^ self changed].