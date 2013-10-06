initialization
initialize
	super initialize.
	self layoutPolicy: TableLayout new.
	self listCentering: #center.
	self width: 300.
	self height: 25.
	self color: (UITheme current textEditorDisabledFillStyleFor: self).
	self borderStyle: (UITheme current textEditorDisabledBorderStyleFor: self).
	
	labelMorph := StringMorph contents: ''.
	self addMorph: (labelMorph).
	
	edited := false.
	focused := false.
	self initializeKeystrokes.
	