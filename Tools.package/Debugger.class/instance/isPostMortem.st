accessing
isPostMortem
	"return whether we're inspecting a frozen exception without a process attached"
	|selectedContext suspendedContext |
	selectedContext := self selectedContext.
	suspendedContext := interruptedProcess suspendedContext.
	suspendedContext ifNil: [ ^ false ].
	(suspendedContext == selectedContext)
		ifTrue: [ ^ false ].
	^ (suspendedContext findContextSuchThat: [:c | c sender == selectedContext]) isNil