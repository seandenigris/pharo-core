transforming
translateBy: aPoint 
	"Answer a new Quadrangle translated by aPoint."

	^ self class
		region: (super translateBy: aPoint)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor