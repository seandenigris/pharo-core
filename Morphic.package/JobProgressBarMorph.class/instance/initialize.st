initialize
initialize
	super initialize.
	progressBar := ProgressBarMorph new.
	progressBar hResizing: #spaceFill.
	button := ThemeIcons smallErrorIcon asMorph.
	self extent: 200@20.
	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #leftCenter;
		cellInset: 3;
		listCentering: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	self 
		addMorphBack: progressBar;
		addMorphBack: button.