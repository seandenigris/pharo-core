testDecodeSimpleStrings

	self 
		assert: (self decode: 'Z=FCrich') 
		equals: 'Z�rich'.
	self 
		assert: (self decode: 'H=E4tten H=FCte ein =DF im Namen, w=E4ren sie m=F6glicherweise keine H=FCte mehr') 
		equals: 'H�tten H�te ein � im Namen, w�ren sie m�glicherweise keine H�te mehr'