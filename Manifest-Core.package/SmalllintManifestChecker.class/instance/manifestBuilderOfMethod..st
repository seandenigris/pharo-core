accessing
manifestBuilderOfMethod: aMethod
	| key cl |
	cl := aMethod methodClass.
	key := cl name , aMethod category asString.
	^ manifestClassCache
		at: key
		ifAbsentPut: [ 
			(BuilderManifest hasManifestFor: aMethod)
				ifTrue: [ BuilderManifest of: aMethod ]
				ifFalse: [ nil ] ]