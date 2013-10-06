class factory
getClassForType: aTypeName
	"Do not confuse.! This method answers an anonymous class,  a subclass of NBExternalTypeValue,
	which can be used for instantiation later i.e:
	
	floatTypeClass := NBExternalTypeValue ofType: 'float'.
	
	float  := floatTypeClass new.
	float value: 1.5.
	float value.
	
	"

	| newSubclass |
	newSubclass := ClassBuilder new
		newSubclassOf: NBExternalTypeValue
		type: NBExternalTypeValue typeOfClass
		instanceVariables: ''
		from: nil.	"we're not using 'self' to avoid wrong subclassing from anonymous subclass "
	newSubclass valueType: aTypeName.
	^ newSubclass