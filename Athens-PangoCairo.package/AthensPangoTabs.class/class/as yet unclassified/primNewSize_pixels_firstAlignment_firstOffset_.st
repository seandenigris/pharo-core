primNewSize: aSize pixels: positionsInPixels firstAlignment: anAlignment firstOffset: offset
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall:#(PangoTabArray  pango_tab_array_new_with_positions  (int aSize,
                                                         int positionsInPixels,
                                                         int anAlignment,
                                                         int offset))