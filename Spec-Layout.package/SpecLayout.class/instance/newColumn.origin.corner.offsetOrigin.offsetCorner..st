commands
newColumn: aBlock origin: originPoint corner: cornerPoint offsetOrigin: ooPoint offsetCorner: ocPoint
	
	commands add: (SpecLayoutAddColumn
							block: aBlock
							layoutFrame: ((originPoint corner: cornerPoint) asLayoutFrame
												 topLeftOffset: ooPoint;
												bottomRightOffset: ocPoint)).