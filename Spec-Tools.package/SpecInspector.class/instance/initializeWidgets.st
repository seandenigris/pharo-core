initialize
initializeWidgets

	self instantiateModels: #(
		list ListComposableModel
		text TextModel
		description TextModel ).
		
	description enabled: false.
	
	self focusOrder add: list.