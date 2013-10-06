adding/removing
addRejectClass: aClass

	|  falsePositives |
	
	falsePositives := manifestClass rejectClasses asOrderedCollection .
	
	((self unwrap: falsePositives) anySatisfy: [:each | each = aClass])
		ifTrue:[ ^ self].
	
	falsePositives add: {aClass asRingDefinition arrayStringForManifest. DateAndTime current asString}..
	 
	manifestClass class 
		compile: (self class rejectClassesTag, Character cr asString, '^ ',  (self buildArrayString: falsePositives))
		classified: 'meta data'
	