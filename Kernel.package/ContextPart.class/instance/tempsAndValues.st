debugger access
tempsAndValues
	"Return a string of the temporary variabls and their current values"
	
	| aStream |
	aStream := (String new: 100) writeStream.
	self tempNames doWithIndex: [ :title :index |
		 aStream nextPutAll: title; nextPut: $:; space; tab.
		 self print: (self namedTempAt: index) on: aStream.
		 aStream cr].
	^aStream contents