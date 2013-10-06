sources, change log
closeSourceFiles
	"Shut down the source files if appropriate. Closing and nilification only take place if the entry was a FileStream, thus allowing stringified sources to remain in the saved image file"

	1 to: 2 do: [:i |
		((SourceFiles at: i) isKindOf: FileStream)
			ifTrue:
				[(SourceFiles at: i) close.
				SourceFiles at: i put: nil]]