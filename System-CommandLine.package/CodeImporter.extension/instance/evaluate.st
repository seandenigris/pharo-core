*System-CommandLine
evaluate
	" stripped down version of evaluateDeclarations"
	| value |
	
	self codeDeclarations do: [ :decl | value := decl import ].
	self flushChangesFile.
	
	^value