private
endTestCase
	stream tab; nextPutAll: '</testcase>'; nextPut: Character lf.
	progressFile nextPutAll: 'finished' ; crlf; flush.