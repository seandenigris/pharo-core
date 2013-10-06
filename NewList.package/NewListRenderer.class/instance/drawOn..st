drawing
drawOn: aCanvas
	| first last selectedIdx |

	aCanvas
		fillRectangle: self fullBounds
		color: self drawColor.
	
	first := self topVisibleIndexForCanvas: aCanvas.
	last := self bottomVisibleIndexForCanvas: aCanvas.
	self listSize isZero ifTrue: [ last := 0 ].
	
	first
		to: last 
		do: [ :index || item |
			item := self itemAtIndex: index.
			self drawBackgroundForItem: item at: index on: aCanvas.
			self drawItem: item at: index on: aCanvas ].
		
	self hasHeader ifTrue: [ self drawHeaderOn: aCanvas ].