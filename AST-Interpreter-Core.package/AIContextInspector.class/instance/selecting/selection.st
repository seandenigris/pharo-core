selection
	selectionIndex <= (self numberOfFixedFields) ifTrue: [^ super selection].
	^ self contextStack at: (selectionIndex - self numberOfFixedFields) ifAbsent:[nil]