*deprecated20
silentlyValue
	"evaluates the receiver but avoiding progress bar notifications to show up."
	self deprecated: 'dont use' on: 'Jul 2012'  in: '2.0'.
	^ self asJob
			loggingProgress;
			run.