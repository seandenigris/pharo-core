testing
isX86
	"Return whether this register is available in the standard x86 instruction set"
	^ self isUpperBank not and: [ self is64 not ]