accept
	<api: #do>
	"Accep the current pendingtext"
	
	self widget ifNotNil: [:w | w accept ].
	
	"Dummy changed to raise an announcement"
	actionPerformedHolder contents: self text.