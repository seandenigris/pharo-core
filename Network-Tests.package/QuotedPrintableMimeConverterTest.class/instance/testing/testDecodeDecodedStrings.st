testDecodeDecodedStrings

	self 
		assert: (self decode: 'H�tten H�te ein � im Namen, w�ren sie m�glicherweise keine H�te mehr')
		equals: 'H�tten H�te ein � im Namen, w�ren sie m�glicherweise keine H�te mehr'