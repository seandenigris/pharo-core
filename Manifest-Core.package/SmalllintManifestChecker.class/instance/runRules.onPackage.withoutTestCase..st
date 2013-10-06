run
runRules: aCompositeRule onPackage: aPackage withoutTestCase: aBoolean


	rule := aCompositeRule.
	environment := (RBPackageEnvironment new packages: {aPackage}).

	environment classesDo: [ :class |
		(class isTrait or: [class isManifest
			or:[aBoolean and: [class allSuperclasses includes: TestCase ]]]) 
				ifFalse: [
					self checkClass: class.
					self checkMethodsForClass: class ] ]