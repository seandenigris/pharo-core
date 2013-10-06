running
setUp
	
	| cl bm|
	cl := Smalltalk globals at: #ManifestManifestResourcesTests ifAbsent: [ nil ].
	cl
		ifNotNil: [ 
			cl
				removeFromChanges;
				removeFromSystemUnlogged ].
			
	bm := BuilderManifest of: MFClassA. 	
	
	bm installFalsePositiveOf: RBCodeCruftLeftInMethodsRule uniqueIdentifierName version:  1.
	bm addFalsePositive: (MFClassB>>#method3) of: RBCodeCruftLeftInMethodsRule uniqueIdentifierName version:  1.
	
	bm installToDoOf: RBOnlyReadOrWrittenTemporaryRule uniqueIdentifierName version:  1.
	bm addAllToDo: {(MFClassB>>#method3).  (MFClassA>>#method)} of: RBOnlyReadOrWrittenTemporaryRule uniqueIdentifierName version:  1.