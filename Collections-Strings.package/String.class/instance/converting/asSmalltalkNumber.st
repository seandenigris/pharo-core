asSmalltalkNumber 
	"Answer the Number created by interpreting the receiver as the string 
	representation of a number in Smalltalk syntax."

	^Number readSmalltalkSyntaxFrom: self