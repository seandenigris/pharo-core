private
removePassword

	list selectedItem 
		ifNil: [ ^self ]
		ifNotNil: [:it | 
			keychain contents removeUserNamePasswordFor: it key.
			keychain contentsChanged ]