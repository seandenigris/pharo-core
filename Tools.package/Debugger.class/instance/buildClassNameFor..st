private
buildClassNameFor: aString
 	"shrink the name shown in the debugger "

	aString first = $[ 
			ifTrue: [  ^ '[...] in ', (aString splitOn: ' in ') last ].
	
	^ aString 