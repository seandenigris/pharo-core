okAction

	text accept.
	block contents: (Smalltalk evaluate: (String streamContents: [:s | s << '[' << text getText <<']'])).