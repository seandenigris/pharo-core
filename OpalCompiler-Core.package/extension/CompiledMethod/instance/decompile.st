decompile
	"Return the decompiled parse tree that represents self"

	^self class compiler decompileMethod: self.