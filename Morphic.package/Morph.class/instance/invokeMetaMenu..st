meta-actions
invokeMetaMenu: evt
	| menu |
	UsersManager default currentUser canShowMorphHalo
		ifFalse: [ ^ self ].
	menu := self buildMetaMenu: evt.
	menu addTitle: self externalName.
	self world ifNotNil: [
		menu popUpEvent: evt in: self world
	]