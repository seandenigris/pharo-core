run
runRules: aCompositeRule onPackage: aPackage


	rule := aCompositeRule.
	environment := (RBPackageEnvironment new packages: {aPackage}).

	environment classesDo: [ :class |
		(class isTrait or: [class isManifest]) ifFalse: [
			self checkClass: class.
			self checkMethodsForClass: class ] ]