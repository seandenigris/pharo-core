order
privateActionIcon
	"Return the icon for this action"

	^ IconicButton new 
			target: method originMethod;
			actionSelector: #browse;
			labelGraphic: (self iconClass iconNamed: #trait) ;
			color: Color transparent;
			extent: 12 @ 12;
			helpText: 'Browse the trait';
			borderWidth: 0