testUpToAnyOfDo
	| testString filename  str1 ch1 ch2|
	testString := '�l�ve en Fran�ais'.
	filename := 'test-file-' , 99 atRandom printString , '.txt'.
	MultiByteFileStream 
		forceNewFileNamed: filename
		do: [ :stream | 
			stream
				nextPutAll: testString. ].
	
	filename asFileReference
		readStreamDo: [ :stream | 
			str1 := stream upToAnyOf: 'd e n F' do: [ :c | ch1 := c].
			self assert: (ch1 = $e).
			self assert: (str1 = '�l�v' ).
			str1 := stream upToAnyOf: 'xyz' do: [ :c | ch2 := c ].
			self assert: (str1 = ' en Fran�ais').
			self assert: (ch2 isNil ).  
		] 