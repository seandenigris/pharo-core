testing
testObsoleteClasses
	| obsoleteClasses |
	
	"Ensure the environment is clean"
	3 timesRepeat: [ Smalltalk garbageCollect ].
	
	Smalltalk fixObsoleteReferences.
	obsoleteClasses := SystemNavigation new obsoleteClasses
		select: [ :each | each isAnonymous not ].
	
	self 
		assert: obsoleteClasses isEmpty
		description: [
			String streamContents: [ :s|
				s 
					nextPutAll: 'Obsolete classes remaining: ';
					print: obsoleteClasses ]]