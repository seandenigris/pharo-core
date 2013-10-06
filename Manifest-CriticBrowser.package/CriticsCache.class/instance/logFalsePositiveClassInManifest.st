private
logFalsePositiveClassInManifest
| manifestBuilder |
	
	packages do: [:package |
		manifestBuilder :=  BuilderManifest ofPackageNamed: package packageName.
		(manifestBuilder rejectClasses \ falsePositiveClasses) 
			do: [:cl |
				manifestBuilder removeRejectClass: cl]. 
		(falsePositiveClasses \ manifestBuilder rejectClasses) 			
			do: [:cl |
				manifestBuilder addRejectClass: cl]].

	