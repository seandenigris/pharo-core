test inspect
testInspectClass
	| inspector |
	inspector := Object inspect.
	inspector changed.
	inspector close.