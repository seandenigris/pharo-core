start
	"Start me. I will start listening on my port for incoming HTTP connections.
	If I am running, I will first stop and thus effectively restart"
	
	self stop.
	self class default = self ifTrue: [ self register ].
	process := [ [ self listenLoop ] repeat ]
		forkAt: Processor highIOPriority 
		named: self serverProcessName.
	self logStarted.
