comparing
= aShortcut
	(aShortcut isKindOf: self class)
		ifFalse: [^ false].
	^ aShortcut modifiers = modifiers