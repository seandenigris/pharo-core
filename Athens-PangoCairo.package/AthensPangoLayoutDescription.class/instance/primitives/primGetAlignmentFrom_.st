primGetAlignmentFrom: anAthensParagraph	
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(PangoAlignment  pango_layout_get_alignment (PangoLayout anAthensParagraph))
					