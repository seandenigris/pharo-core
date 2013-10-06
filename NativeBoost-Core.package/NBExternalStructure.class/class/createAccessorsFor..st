managing accessors
createAccessorsFor: fieldName 
	"Define read/write accessors for the given field"
	| code |

	code := fieldName,'
	"This method was automatically generated"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ self fieldAt: ' , fieldName printString.
	self compile: code classified: '*auto-accessing'.
	
	code := fieldName,': anObject
	"This method was automatically generated"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ self fieldAt: ' , fieldName printString , ' put: anObject'.
	self compile: code classified: '*auto-accessing'.