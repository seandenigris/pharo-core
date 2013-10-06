setProject: aString withBlock: aBlock

	| spec projectSpec |
	projectSpec := 
		(self project projectSpec)
			name: aString;
			projectPackage: self project packageSpec;
			yourself.
	projectSpec projectPackage: self project packageSpec.
	spec := 
		(self project projectReferenceSpec)
			name: aString;
			projectReference: projectSpec;
			yourself.
	self root packages merge: spec.
	self with: projectSpec during: aBlock