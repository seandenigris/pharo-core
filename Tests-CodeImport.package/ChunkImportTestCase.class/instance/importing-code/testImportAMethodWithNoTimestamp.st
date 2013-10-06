testImportAMethodWithNoTimestamp
	| class comment |
	SystemAnnouncer uniqueInstance suspendAllWhile: [[
		class := self importAClass.
		CodeImporter evaluateString: ('!{1} methodsFor: ''some protocol''!someMethod
	^true' format: { class name asString }).
	
		self assert: class new someMethod.
	] ensure: [ class ifNotNil: [ class removeFromSystem ] ] ]