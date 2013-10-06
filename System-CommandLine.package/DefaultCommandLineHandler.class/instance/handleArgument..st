activation
handleArgument: aString
	
	"give priority to subcommands"
	self handleSubcommand == self
		ifFalse: [ ^ self ].
		
	"check for default options"
	aString = '--version'
		ifTrue: [ ^ self version ].
		
	aString = '--help'
		ifTrue: [ ^ self help ].
		
	aString = '--list'
		ifTrue: [ ^ self list ].
		
	aString = '--copyright'
		ifTrue: [ ^ self copyright ].
	
	"none of the previous options matched hence we output an error message"
	self error.