report
printOn: aStream
	aStream print: class; nextPutAll: '>>'; print: (method ifNotNil:[method who last]).
	aStream nextPutAll: ' -- '; print: tally.