private
fieldAt: aFieldName put: value

	^ NBFFICallout handleFailureIn: thisContext sender
		nativeCode: [:gen | self emitWrite: aFieldName generator: gen. gen bytes ]