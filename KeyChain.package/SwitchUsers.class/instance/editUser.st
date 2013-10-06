private
editUser
	| user editor |
	
	(user := selectedUser contents) ifNil: [ ^ self ].
	usersManager contents
		ifNil: [ user unlock ifFalse: [ ^ self ]]
		ifNotNil: [:uM | uM currentUser canEditUser 
						ifFalse: [ user unlock ifFalse: [ ^ self ]]].
	
	editor := UserEditor new
				user: user;
				usersManager: usersManager contents;
				openDialogWithSpec;
				yourself.
				
	self window openModal: editor window window.
	usersManager contentsChanged