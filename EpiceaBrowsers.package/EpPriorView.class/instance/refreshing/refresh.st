refresh
	| currentHeadReference currentFilter |
	currentHeadReference := self log headReference.
	currentFilter := self andFilter.
	entryItemByEntryReferenceCache := Dictionary new.

	(lastRefreshedHeadReference ~= currentHeadReference
		or: [ lastRefreshedFilter ~= currentFilter ])
		ifFalse: [ ^ self ].
	rootItems := self
		next: desiredNumberOfItems
		from: currentHeadReference.
	lastRefreshedHeadReference := currentHeadReference.
	lastRefreshedFilter := currentFilter