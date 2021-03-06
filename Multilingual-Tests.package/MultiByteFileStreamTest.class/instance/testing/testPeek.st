testPeek
	| testString filename  |
	testString := '� � � � � � � � � � � �'.
	filename := 'test-file-' , 99 atRandom printString , '.txt'.
	MultiByteFileStream 
		forceNewFileNamed: filename
		do: [ :stream | 
			stream
				nextPutAll: testString;
				crlf ].
	[  
	filename asFileReference
		readStreamDo: [ :stream |
			self assert: (stream peek = $� ).
			self assert: (stream next = $� ).
			stream upToEnd.
			self assert: (stream peek = nil ).
		] ]
	ensure: [ filename asFileReference ensureDelete ] 