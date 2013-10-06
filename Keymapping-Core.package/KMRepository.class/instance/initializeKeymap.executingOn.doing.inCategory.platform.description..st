accessing
initializeKeymap: shortcutName executingOn: shortcut doing: action inCategory: categoryName platform: aPlatform description: aDescription
	| category entry |
	category := self ensureCategoryByName: categoryName.
	(category hasKeymapNamed: shortcutName at: aPlatform) not
		ifTrue: [
			entry := shortcut asShortcut named: shortcutName do: action withDescription: aDescription.
			category addKeymapEntry: entry at: aPlatform.
			]
		ifFalse:[
			entry := category keymapNamed: shortcutName at: aPlatform.
			entry shortcutHasChangedBy: shortcut asShortcut.
			entry action: action.
			entry description: aDescription
			]