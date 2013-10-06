initialization
initializeDialogWindow: aWindow

	aWindow okAction: [ | user password |
		user := userField getText.
		password := passwordField getText.
		(user isEmpty or: [ password isEmpty ])
			ifFalse: [ result contents: (user -> password) ]].
		
	aWindow toolbar okButton 		
					keyStrokeForNextFocus: Character tab asShortcut;
					keyStrokeForPreviousFocus: Character tab shift asShortcut.
		
	aWindow toolbar cancelButton 		
					keyStrokeForNextFocus: Character tab asShortcut;
					keyStrokeForPreviousFocus: Character tab shift asShortcut.
		
	self focusOrder
		add: userField;
		add: passwordField;
		add: aWindow toolbar.