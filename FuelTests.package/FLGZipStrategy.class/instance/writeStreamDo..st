writing
writeStreamDo: aValuable
	"Evaluates the argument with a write stream. Answers the result."
	
	targetStrategy writeStreamDo: [:aStream |
		^ GZipWriteStream on: aStream do: aValuable]