entryReader

	^ entryReader ifNil: [
		entryReader := self newEntryReader ]