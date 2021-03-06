parseFields: fields structure: structClass
	| stream type fieldName generator anonFieldCount |
	
	stream := fields readStream.
	generator := FFICallout new requestor: structClass.
	anonFieldCount := 0.

	fieldSpec := FFIExternalStructureFieldSpec new.
	[ stream atEnd ] whileFalse: [ | arity |
		type := generator resolveType: stream next. 
		arity := 0.
		[stream peek = #* ] whileTrue: [
			arity := arity + 1.
			stream next ].
		type pointerArity: arity.
		stream peek ~= #';' ifTrue: [
			fieldName := stream next.
			fieldName isSymbol ifFalse: [ self error: 'invalid field name'].
			(fieldSpec fieldNames includes: fieldName) ifTrue: [ self error: 'duplicate field name' ].

			"align := type typeSize min: byteAlign." "if byte align == 1, struct is packed"
			"add padding between fields, if needed"
			"self sizeAlignedTo: align with: type." 

			fieldSpec addField: fieldName type: type. 
		] ifFalse: [
			self flag: 'ToDO: Remove the ordered dictionary.'.
			fieldSpec addField: anonFieldCount type: type. 
			anonFieldCount := anonFieldCount + 1.
		].
		stream peek == #';' ifTrue: [ stream next ]].
	
	^ self fieldSpec
