tests
testSimulateKeystrokes

	| textMorph |
	textMorph := TextMorph new contents: ''; openInWorld.
	textMorph takeKeyboardFocus.
	self simulateKeyStrokes: 'hello'.
	self assert: textMorph contents = 'hello'.
	textMorph delete.