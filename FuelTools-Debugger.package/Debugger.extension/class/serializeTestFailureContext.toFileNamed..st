*FuelTools-Debugger
serializeTestFailureContext: aContext toFileNamed: aFilename
	| serializer |
	
	serializer := FLSerializer newDefault.
	self encodeDebugInformationOn: serializer. 
	serializer addPostMaterializationAction: [ :materialization | 
		Smalltalk tools debugger
			openContext: materialization root
		   	label: 'External stack'
		   	contents: nil ].
		
	serializer
		" use the sender context, generally the current context is not interesting"
		serialize: aContext
		toFileNamed: aFilename