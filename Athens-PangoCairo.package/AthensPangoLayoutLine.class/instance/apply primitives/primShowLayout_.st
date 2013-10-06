primShowLayout: aCairoCanvas 
	"The top-left corner of the PangoLayout will be drawn at the current point of the cairo context."
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #(void pango_cairo_show_layout_line  (
			cairo_t aCairoCanvas, 
			self) )