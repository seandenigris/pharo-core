adding/removing
removeRejectClass: aClass

	|  classes |
	classes :=  manifestClass rejectClasses asOrderedCollection .
	
	classes := classes reject: [:each | 
			((Smalltalk at: (each first first)) manifestReadOn:  (each first at:2)) =  aClass asRingDefinition ].	
	 
	manifestClass class 
		compile: (self class rejectClassesTag, Character cr asString, '^ ',  (self buildArrayString: classes))
		classified: 'meta data'
	