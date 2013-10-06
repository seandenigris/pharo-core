private
addAllItem: aSet selector: selector
	| set  newSet arrayString |
	
	set := (manifestClass perform: selector) asOrderedCollection .
		
	newSet :=  aSet \  (self unwrap: set).
	newSet isEmpty ifTrue: [^ self].		
			
	set addAll: (newSet collect: [:fp |
		{fp asRingDefinition arrayStringForManifest. DateAndTime current asString}]). 		
		
	
	arrayString := self buildArrayString: set.
	
	manifestClass class 
		compile: (selector asString,  Character cr asString, '^ ',arrayString)
		classified: 'meta data'