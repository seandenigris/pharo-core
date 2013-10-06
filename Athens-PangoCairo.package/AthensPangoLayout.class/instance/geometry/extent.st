extent
	|width height bigEndian w h|
	width := ByteArray new:4.
	height :=  ByteArray new:4.
	self primGetSizeWidth: width height: height.
	bigEndian := Smalltalk isBigEndian.
	w :=  ( (width longAt: 1 bigEndian: bigEndian) /  PANGO_SCALE ) rounded.
	h :=  ( (height longAt: 1 bigEndian: bigEndian) /  PANGO_SCALE ) rounded.
	^ w @ h