system announcements
packageCreated: anAnnouncement

	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	self showGroups not
		ifTrue: [ self updatePackageView ]