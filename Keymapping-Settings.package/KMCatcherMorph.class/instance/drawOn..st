drawing
drawOn: aCanvas
	"Indicate unaccepted edits, conflicts etc."

	super drawOn: aCanvas. 
	focused ifTrue: [
		UITheme current drawTextAdornmentFor: self color: Color orange on: aCanvas]