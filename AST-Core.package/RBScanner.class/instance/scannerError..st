error handling
scannerError: aString 
	"Evaluate the block. If it returns raise an error"

	self errorBlock cull: aString cull: self errorPosition cull: self.
	self error: aString