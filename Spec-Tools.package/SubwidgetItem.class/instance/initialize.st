initialization
initialize
	"Initialization code for SubwidgetItem"

	super initialize.
	
	model := nil asValueHolder.
	initialExtent := 400@25.
	validated := false asValueHolder.