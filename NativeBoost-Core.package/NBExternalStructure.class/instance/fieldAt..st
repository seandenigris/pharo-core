private
fieldAt: aFieldName
	
	^ NBFFICallout handleFailureIn: thisContext sender
		nativeCode: [:gen | self emitRead: aFieldName generator: gen. gen bytes ]