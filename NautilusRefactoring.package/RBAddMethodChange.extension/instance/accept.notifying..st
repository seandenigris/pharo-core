*NautilusRefactoring
accept: aText notifying: aController
	"Just to make sure that it compiles, try with the standard compiler."
	
	| compilerClass |
	compilerClass := self changeClass
		ifNil: [ Object compilerClass ]
		ifNotNil: [:changeClass | changeClass compilerClass ].
		
	compilerClass new
		compile: aText asString in: self changeClass
		classified: nil notifying: aController
		ifFail: [ ^ false ].
		
	self 
		class: self changeClass
		protocol: self protocol
		source: aText asString.
		
	^ true