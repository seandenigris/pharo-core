creation
ensureFile: aFileName
	^ self 
		fileEntryAt: aFileName 
		put: (MemoryFileSystemFile named: aFileName)