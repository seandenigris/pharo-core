selectedMessageName

	^message ifNil:[super selectedMessageName] ifNotNil: [ message ]