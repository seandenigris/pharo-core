testIssue6406

	| aFolder dialog file invalidFolder |
	aFolder := (FileSystem workingDirectory / 'folder') ensureCreateDirectory.
	[ 
	"Absolute folder paths work"
	dialog := FileDialogWindow new selectPathName: aFolder fullName.
	"just compare the lower-case path names for now since on mac the test will fail
	under certain circumstances..."
	self 
		assert: dialog selectedFileDirectory fullName asLowercase
		equals: aFolder fullName asLowercase.
	
	"Relative folder paths work"
	dialog := FileDialogWindow new selectPathName: 'folder' asFileReference.
	self 
		assert: dialog selectedFileDirectory fullName asLowercase
		equals: aFolder fullName asLowercase.
	
	"Invalid folder defaults to the working folder"
	invalidFolder := 'cant-possibly-exist-for-testIssue6406'.
	dialog := FileDialogWindow new selectPathName: invalidFolder.
	self 
		assert: dialog selectedFileDirectory fullName asLowercase
		equals: FileSystem workingDirectory fullName asLowercase.
	] ensure: [ aFolder ensureDelete. ]