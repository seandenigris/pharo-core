testing
isAbstractClass
	self deprecated: 'Use hasAbstractMethods' on:  '16 December 2012' in: #Pharo2.0.
	^ (self allMethods anySatisfy: [:cm | cm sendsSelector: #subclassResponsibility ])
		or: [ self class allMethods anySatisfy: [:cm | cm sendsSelector: #subclassResponsibility ] ]