accessing
currentDisplayChoice: aSymbol

	currentDisplayChoice := aSymbol.
	
	self changed: #showSource.
	self changed: #showByteCode.
	self changed: #showDecompile.
	self changed: #sourceCodeFrom:.
	self announce: (NautilusTextDisplayerChanged displayerSymbol: aSymbol)