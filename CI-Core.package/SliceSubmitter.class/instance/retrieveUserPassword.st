initialize
retrieveUserPassword

	| ui user password |
	
	ui := Authentifier new.
	World openModal: ui openDialogWithSpec window.
	^ ui result