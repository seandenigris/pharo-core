attributes
headlessOption
	"Return the default name for the headless option for this VM"
	^ Smalltalk os isUnix
		ifTrue: [ '-vm-display-null' ]
		ifFalse: [ '-headless' ]