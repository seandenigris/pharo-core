*ast-core
parseTree
	^(RBExplicitVariableParser 
		parseMethod: self sourceCode 
		onError: [ :msg :pos | ^ nil ]) classBinding: self methodClass binding.
	