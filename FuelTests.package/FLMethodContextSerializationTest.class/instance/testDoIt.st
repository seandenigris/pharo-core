tests
testDoIt
	"Serialization of DoIt methods should be possible by default."
	
	| context |
	[ Compiler evaluate: 'self error' ]
		on: Error 
		do: [:error | context:= error signalerContext copyStack ].
	
	self serialize: context