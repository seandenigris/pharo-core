protocol
forIcon: icon
	| weak |
	weak := WeakArray new: icon arguments size.
	icon arguments doWithIndex: [:e :i | weak at: i put: e ].

	self 
		target: icon target;
		actionSelector: icon actionSelector;
		arguments: weak;
		labelGraphic: icon labelGraphic;
		color: icon color;
		helpText: icon helpText;
		extent: icon extent;
		borderWidth: icon borderWidth