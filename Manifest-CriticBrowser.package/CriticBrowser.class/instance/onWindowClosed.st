protocol
onWindowClosed
	| text |	

	cache cacheChange 
		ifTrue: [	
			text := 'Do you want log all false positive in the Manifests
before closing the Critics Browser ?' .
			(MorphicUIManager new confirm: text)
				ifTrue: [ 
					cache logInManifest ]].
	