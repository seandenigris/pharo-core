menu declaration
smalltalkEditorMenuOn: aBuilder 
	"Specify the menu used when writing code. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'smalltalkEditorMenu'
		model: nil) menu popUpInWorld
	"
	<contextMenu>
	<smalltalkEditorMenu>
	| uitheme|
	uitheme := UITheme current.
	
	UsersManager default currentUser canEvaluateCode ifTrue: [
		(aBuilder item: #'Do it' translated) 
			keyText: 'd';
			selector: #doIt; 
			help: nil; 
			icon: uitheme  smallDoItIcon.
		(aBuilder item: #'Print it' translated) 
			keyText: 'p';
			selector: #printIt; 
			help: nil; 
			icon: uitheme smallPrintItIcon. ].
	UsersManager default currentUser canInspect ifTrue: [
		(aBuilder item: #'Inspect it' translated) 
			keyText: 'i';
			selector: #inspectIt; 
			help: nil; 
			icon: uitheme smallInspectItIcon.
		(aBuilder item: #'Explore it' translated) 
			keyText: 'I';
			selector: #exploreIt; 
			help: nil; 
			icon: uitheme smallInspectItIcon ].
	UsersManager default currentUser canDebug ifTrue: [
		(aBuilder item: #'Debug it' translated) 
			keyText: 'D';
			selector: #debugIt; 
			help: nil; 
			icon: uitheme smallDebugIcon.
		(aBuilder item: #'Profile it' translated) 
			selector: #tallyIt; 
			icon: uitheme smallDebugIcon; 
			withSeparatorAfter. ].
	(aBuilder item: #'Find...' translated) 
		keyText: 'f';
		selector: #find; 
		help: nil; 
		icon: uitheme smallFindIcon.
	(aBuilder item: #'Find again' translated) 
		keyText: 'g';
		selector: #findAgain; 
		help: nil; 
		icon: uitheme smallFindIcon.
	UsersManager default currentUser canBrowse ifTrue: [
		(aBuilder item: #'Extended search...' translated) 
			selector: #shiftedTextPaneMenuRequest; 
			withSeparatorAfter ].
	(aBuilder item: #'Do again' translated) 
		keyText: 'j';
		selector: #again; 
		help: nil; 
		icon: uitheme smallRedoIcon.
	(aBuilder item: #'Undo' translated) 
		keyText: 'z';
		selector: #undo; 
		help: nil; 
		icon: uitheme smallUndoIcon; 
		withSeparatorAfter.
	(aBuilder item: #'Copy' translated) 
		keyText: 'c';
		selector: #copySelection; 
		help: nil; 
		icon: uitheme smallCopyIcon.
	(aBuilder item: #'Cut' translated) 
		keyText: 'x';
		selector: #cut; 
		help: nil; 
		icon: uitheme smallCutIcon.
	(aBuilder item: #'Paste' translated) 
		keyText: 'v';
		selector: #paste; 
		help: nil; 
		icon: uitheme smallPasteIcon.
	(aBuilder item: #'Paste...' translated) 
		selector: #pasteRecent; 
		help: nil; 
		icon: uitheme smallCopyIcon; 
		withSeparatorAfter.
	UsersManager default currentUser canEvaluateCode ifTrue: [
		(aBuilder item: #'Accept' translated) 
			keyText: 's';
			selector: #accept; 
			help: nil; 
			icon: uitheme smallOkIcon.
		(aBuilder item: #'Cancel' translated) 
			keyText: 'l';
			selector: #cancel; 
			help: nil; 
			icon: uitheme 
			smallCancelIcon ].