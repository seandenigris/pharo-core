initValueType: aTypeName 
	"Initialize the value type and size.
	
	If you want to use a public subclass of me, then make sure you call this method
	in your class #initialize method.
	" 

	valueType := aTypeName.
	valueSize  := (NBFFICallout new requestor: self; resolveType: valueType) typeSize .
	self installAccessors.