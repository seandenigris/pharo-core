materializeReferencesOf: anObject with: aDecoder
	aDecoder nextEncodedPositiveInteger "anObject size"
		 timesRepeat: 
			[ anObject add: aDecoder nextEncodedReference -> aDecoder nextEncodedReference ]