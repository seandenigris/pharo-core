displaying
open
	| focus |
	super open.
	window takeKeyboardFocus.
	focus := list.
	self selectedClass ifNotNil: [ focus := list2 ].
	self selectedCategory ifNotNil: [:cat |  
		categoryWidget selectProtocol: cat.
		methodWidget resetMethodCache.
		methodWidget update: #getMethodItem:.
		focus := categoryWidget ].
	self selectedMethod ifNotNil: [:meth | 
		methodWidget selectMethod: meth.
		focus := methodWidget ].
	self giveFocusTo: focus.
	