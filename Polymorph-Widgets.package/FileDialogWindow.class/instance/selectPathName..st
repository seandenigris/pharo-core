as yet unclassified
selectPathName: aString
	"Select the directory and set the file name text
	from the given string."

	| reference |
	reference := aString asFileReference asAbsolute.
	
	reference isDirectory ifTrue: [ ^ self selectDirectory: reference ].
	reference isFile
		ifTrue: [	
			self selectDirectory: reference parent.
			self fileNameText: reference basename ].
		
	self selectDirectory: FileSystem disk workingDirectory.
	self fileNameText: ''.