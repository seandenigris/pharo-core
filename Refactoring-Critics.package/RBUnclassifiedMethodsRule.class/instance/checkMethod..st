running
checkMethod: aContext 
	(aContext selectedClass organization categoryOfElement: aContext selector) = Categorizer default ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]