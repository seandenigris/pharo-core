nextLineFromStream
	| line |
	line := lineReader nextLine.
	self logVerbose: line.
	^ line