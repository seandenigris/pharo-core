requests
timeStamp
	"The time stamp of the last submission of the method."
	
	^ self method isNil ifFalse: [ self method timeStamp ]