instance creation
from: aString delimiter: aDelimiterCharacter 
	"Answer a path composed of several elements delimited by aCharacter"
	| pathCls |
	aString isEmpty
		ifTrue: [ ^ self root ].
	
	pathCls :=  ((self isAbsoluteUnixPath: aString) or: [self isAbsoluteWindowsPath: aString]) 
		ifTrue: [AbsolutePath]
		ifFalse:[RelativePath].
	
	^ pathCls withAll: (pathCls canonicalizeElements: (aDelimiterCharacter split: aString))