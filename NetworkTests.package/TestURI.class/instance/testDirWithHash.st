tests query
testDirWithHash
	"Tests proper escaping of directories with hash mark"
	"self debug: #testDirWithHash"
	| uriDir origPath origDir dirURI |
	
	origDir := FileSystem disk workingDirectory / '#123'.
	
	dirURI := origDir uri.
	uriDir := dirURI asFileReference.
	
	self assert: origDir fullName = uriDir fullName