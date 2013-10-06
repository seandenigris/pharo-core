protocol
asIcon
	| strong |
	strong := Array new: self arguments size.
	self arguments doWithIndex: [:e :i | strong at: i put: e ].

	^ IconicButton new 
		target: self target;
		actionSelector: self actionSelector;
		arguments: strong;
		labelGraphic: self labelGraphic;
		color: self color;
		helpText: self helpText;
		extent: self extent;
		borderWidth: self borderWidth