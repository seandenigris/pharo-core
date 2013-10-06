requests
priorTimeStamp
	"The time stamp of the penultimate submission of the method, if any."
	
	| stamp |
	^ (stamp := VersionsBrowser 
		timeStampFor: selector
		class: class
		reverseOrdinal: 2) isNil
			ifFalse: [ 'prior time stamp: ' , stamp ]