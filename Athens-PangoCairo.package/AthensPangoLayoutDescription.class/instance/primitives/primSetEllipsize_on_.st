primSetEllipsize: aMode on: anAthensParagraph

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
 	self pangoNbCall: #(void  pango_layout_set_ellipsize   (
					PangoLayout anAthensParagraph,
					PangoEllipsizeMode aMode) )
 					