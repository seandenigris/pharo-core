fillStyle
	"Return the current fillStyle of the receiver."
	self assureExtension.
	^extension fillStyle ifNil: [
		backgroundColor
			ifNil: [self theme backgroundColor]]