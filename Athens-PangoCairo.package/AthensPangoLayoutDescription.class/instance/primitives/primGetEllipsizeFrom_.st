primGetEllipsizeFrom: anAthensParagraph
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(PangoEllipsizeMode  pango_layout_get_ellipsize  (PangoLayout anAthensParagraph))
 