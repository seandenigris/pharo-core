private
buildHierarchyFor: aClass

	^ self buildHierarchyForClasses: aClass withAllSuperclasses, aClass allSubclasses