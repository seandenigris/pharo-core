origins
home
	"Value of the $HOME environment variable. When NativeBoost is not available, do your best to answer something not too stupid."
	^  [ self resolveString: (self nbGetEnv: 'HOME') ]
		on: Error
		do: [ (self resolveString: self class primitiveGetUntrustedUserDirectory)
					parent parent parent "don't know any better default" ]