shortcuts
registerClassShortcuts: aWidget

	aWidget on: $b command do: [ self selectedClass ifNotNil:[ self browseMethodFull ]].
	aWidget on: $d command do: [ self selectedClass ifNotNil:[ self forgetClass ]].
	aWidget on: $x command do: [ self selectedClass ifNotNil:[ self removeClass ]].