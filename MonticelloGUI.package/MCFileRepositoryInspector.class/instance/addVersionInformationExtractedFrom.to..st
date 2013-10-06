as yet unclassified
addVersionInformationExtractedFrom: each to: packageNames
	| name |
	name := (each copyUpToLast: $.) copyUpTo: $(.
	name last isDigit
		ifTrue: [ 
			versions
				add:
					{(packageNames add: (name copyUpToLast: $-)).	"pkg name"
					((name copyAfterLast: $-) copyUpTo: $.).	"user"
					(((name copyAfterLast: $-) copyAfter: $.) asInteger ifNil: [ 0 ]).	"version"
					each }]