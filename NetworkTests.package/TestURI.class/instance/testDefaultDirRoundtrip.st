running file
testDefaultDirRoundtrip
	"self debug:#testDefaultDirRoundtrip"
	
	| defaultDir defaultDirURI uriDir |
	defaultDir := FileSystem workingDirectory.
	defaultDirURI := defaultDir uri.
	uriDir := defaultDirURI asFileReference.
	self assert: (defaultDir fullName = uriDir fullName)