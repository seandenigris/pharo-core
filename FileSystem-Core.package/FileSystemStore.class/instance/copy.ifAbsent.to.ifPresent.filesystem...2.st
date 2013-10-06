private
copy: sourcePath ifAbsent: absentBlock to: destinationPath ifPresent: presentBlock filesystem: aFilesystem
	self deprecated: 'Use #copy:ifAbsent:to:ifPresent:fileSystem:' on: '3 April 2012' in: 'Pharo 1.4'.
	^self 
		copy: sourcePath 
		ifAbsent: absentBlock 
		to: destinationPath 
		ifPresent: presentBlock 
		fileSystem: aFilesystem