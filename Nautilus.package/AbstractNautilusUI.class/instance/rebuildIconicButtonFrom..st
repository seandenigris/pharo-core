icon
rebuildIconicButtonFrom: icon

	^ IconicButton new 
		target: self;
		actionSelector: icon actionSelector;
		arguments: icon arguments;
		labelGraphic: icon labelGraphic;
		color: icon color;
		helpText: icon helpText;
		extent: icon extent;
		borderWidth: icon borderWidth