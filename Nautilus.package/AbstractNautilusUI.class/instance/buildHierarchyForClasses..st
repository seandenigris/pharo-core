private
buildHierarchyForClasses: aCollection

	| result classes |
	result := IdentityDictionary new.
	classes := (aCollection collect: #theNonMetaClass) asSet.
	classes do: [:class || level |
		level := OrderedCollection with: class.
		class allSuperclassesDo: [:superClass |
			(classes includes: superClass)
				ifTrue: [ level add: superClass beforeIndex: 1 ]].
		level addFirst: 'whatever you want here'.
		result at: class put: level ].
	^ result