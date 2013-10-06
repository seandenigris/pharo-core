private
addItem: fp wihtComment: aString selector: selector 
	| set unwrapSet arrayString critic |
	
	set := (manifestClass perform: selector) asOrderedCollection .

	unwrapSet := self unwrap: set.
	(unwrapSet anySatisfy: [:each | each = fp])
		ifTrue:[ critic := set at: (unwrapSet indexOf: fp). 
			set removeIndex: (unwrapSet indexOf: fp).
			set add: { critic at: 1. critic at: 2. aString}]
		ifFalse: [set add: {fp asRingDefinition storeString. DateAndTime current asString. aString}].
	

	arrayString := self buildArrayString: set.
	
	manifestClass class 
		compile: (selector asString,  Character cr asString, '^ ',arrayString)
		classified: 'meta data'