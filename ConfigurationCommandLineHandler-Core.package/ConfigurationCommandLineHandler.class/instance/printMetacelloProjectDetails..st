printing
printMetacelloProjectDetails: metacelloProject
	self inform: 'Available versions for ', self configurationName.
	
	metacelloProject symbolicVersionMap keysDo: [ :key|
		self stdout print: key; lf ].
	
	metacelloProject map keysDo: [ :key|
		self stdout nextPutAll: key; lf ]