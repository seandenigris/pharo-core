alignmentValue
	^alignment caseOf:{
		['left']->[PANGO_ALIGN_LEFT].
  		['center']->[PANGO_ALIGN_CENTER].
  		['right']->[PANGO_ALIGN_RIGHT].
	}