api
shortcut
	| theKeystrokes |
	theKeystrokes := self keystrokes.
	theKeystrokes 
		ifEmpty: [ ^ KMNoShortcut new ].
		
	^ theKeystrokes allButFirst 
		inject: theKeystrokes first asShortcut 
		into: [ :acum :each | 
			acum , each asShortcut ]