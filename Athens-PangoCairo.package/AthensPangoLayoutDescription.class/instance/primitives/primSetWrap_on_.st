primSetWrap: aMode on: anAthensParagraph

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self pangoNbCall: #(void  pango_layout_set_wrap (
					PangoLayout anAthensParagraph,
					PangoWrapMode aMode) )  
					