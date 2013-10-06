getExtents
	| inkRect inkRectArray logicalRect logicalRectArray|
	
	inkRect  := AthensPangoRectangle new.
	inkRectArray := inkRect asByteArray.
	
	logicalRect  := AthensPangoRectangle new.
	logicalRectArray := logicalRect asByteArray.
	
	self primGetExtentsInk: inkRectArray logical: logicalRectArray.
	
	inkRect readFrom: inkRectArray.
	logicalRect readFrom: logicalRectArray.
	
	^ {inkRect. logicalRect}.