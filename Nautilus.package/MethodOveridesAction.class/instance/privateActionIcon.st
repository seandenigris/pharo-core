order
privateActionIcon
	"Return the icon for this action"

	| testMethod |
	isOverride
		ifTrue: [ 
			isOverridden
				ifTrue: [
					result := self buildUpAndDownArrowIcon: method.
					^ result key ]
				ifFalse: [ 
					^ IconicButton new
						target: self browser;
						actionSelector: #arrowUp:;
						arguments: {method};
						labelGraphic: (self iconClass iconNamed: #arrowUp);
						color: Color transparent;
						helpText: 'Browse overriden message';
						extent: 12 @ 12;
						borderWidth: 0 ] ]
		ifFalse: [ 
			isOverridden
				ifTrue: [ 
					^ IconicButton new
						target: self browser;
						actionSelector: #arrowDown:;
						arguments: {method};
						labelGraphic: (self iconClass iconNamed: #arrowDown);
						color: Color transparent;
						helpText: 'Browse overriding messages';
						extent: 12 @ 12;
						borderWidth: 0 ] ]