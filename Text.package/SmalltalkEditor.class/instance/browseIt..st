editing keys
browseIt: t1 
	UsersManager default currentUser canBrowse
		ifFalse: [^ false].
	self browseIt.
	^ true