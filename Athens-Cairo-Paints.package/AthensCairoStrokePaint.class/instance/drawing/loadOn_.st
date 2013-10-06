loadOn: aCanvas
	self fillPaint loadOn: aCanvas.
	self width notNil ifTrue:[ self primSetLineWidthOn: aCanvas].
	self joinStyle notNil ifTrue:[ self primSetLineJoinOn: aCanvas].
	self capStyle notNil ifTrue:[ self primSetLineCapOn: aCanvas].
	
	dashLenghts 
		ifNil: [ aCanvas resetDash ] 
		ifNotNil: [ self setDashesOn: aCanvas ].