inspectionSubMenu: aMenu
	|selectedObject|
	
	selectedObject := self selectedElement value.

	aMenu 
		add: 'Inspect (i)' translated
			target: self
			selector: #inspectInNewWindow:
			argumentList: {selectedObject}.
			
	self customMenuActions cull: aMenu.
	
	aMenu
		add: 'Explore (I)' translated
			target: self
			selector: #explore:
			argumentList: {selectedObject}.
			
	aMenu addLine.