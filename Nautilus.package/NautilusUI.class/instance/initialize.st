initialization
initialize
	"Initialization code for NautilusUI"

	super initialize.

	categoryWidget := CategoryWidget model: self.
	methodWidget := MethodWidget model: self.