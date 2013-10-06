initializeFromSystem
	| package info |
	
	self allManagers
		do: [ :workingCopy | 
			info := PackageInfo named: workingCopy packageName.
			package := self ensureExistAndRegisterPackageNamed: info packageName.	
				
			"My problem here: If a package appear here after one of its subcategories, all classes and methods 
			 would be re-affected to this package instead of the subcatagory. That's why I focus only on classes 
			and methods that are not defined in subcategories, to avoid to override information set before"
			info withClassesAndCategoriesDo: [ :class :category | 
				package addClassDefinition: class.
				package addClassDefinition: class toClassTag: category asSymbol ].
			info coreMethods do: [ :each | 
				(each isValid and: [ each isFromTrait not ])
					ifTrue: [ package addMethod: each compiledMethod ] ] ]
		displayingProgress: 'Importing from MC managers. Pass 1'.
	
	self allManagers 
		do: [ :workingCopy | 
			info := PackageInfo named: workingCopy packageName.
			package := self packageNamed: info packageName.	
			info extensionMethods  do: [ :each |
				((each isValid 
					and: [ each compiledMethod origin == each compiledMethod methodClass ])
					and: [ each package = package ])
					ifTrue: [ package addMethod: each compiledMethod ] ] ]
		displayingProgress: 'Importing from MC managers. Pass 2'.