primGetCursorPosAt: index strong: strongArray weak: weakArray
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(void  pango_layout_get_cursor_pos (
			self,
			int index,
			ByteArray strongArray,
			ByteArray weakArray ))