primGetExtentsInk: anInkRect logical: aLogicalRect
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_line_get_extents (
		self,
        ByteArray anInkRect,
        ByteArray aLogicalRect))