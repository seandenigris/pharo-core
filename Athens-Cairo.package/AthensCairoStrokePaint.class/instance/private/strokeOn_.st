strokeOn: aCanvas
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	self nbCall: #(void cairo_stroke(AthensCairoCanvas aCanvas))