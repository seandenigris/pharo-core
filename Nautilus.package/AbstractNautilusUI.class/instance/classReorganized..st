system announcements
classReorganized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	anAnnouncement classReorganized = self selectedClass
		ifTrue: [ self update ].