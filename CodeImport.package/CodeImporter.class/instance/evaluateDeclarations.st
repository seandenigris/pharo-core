evaluating
evaluateDeclarations
	"Evaluates the declarations from the text in the file and answers the last result"

	| value |
	self parseDeclarations.
	self codeDeclarations do: [ :decl | value := decl import ].
	self flushChangesFile.
	^value