openModal: aWindow

	^ self widget 
		ifNotNil: [:w | w openModal: aWindow ].