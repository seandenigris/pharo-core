helpers
nbGetEnv: str
	"This method calls a Standard C library getenv() function"

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: #errorCode>
	^ self nbCall: #(#String #getenv #(#String #str)) module: NativeBoost CLibrary