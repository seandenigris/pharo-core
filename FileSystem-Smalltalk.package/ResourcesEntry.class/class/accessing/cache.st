cache
	^ cache ifNil: [ 
		cache := WeakIdentityKeyDictionary new ]