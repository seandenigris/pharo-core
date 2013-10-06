initialization
initializeWidgets

	self instantiateModels:  #(
		cancelButton 	ButtonModel
		acceptButton 	ButtonModel
		pickList 		PickListModel
		textArea 		TextModel ).

	self initializeAcceptButton.
	self initializeCancelButton.
	self initializePickList.
	self initializeTextArea.
	self setFocus.
	self
		on: $s command do: [ self accept ];
		on: Character escape do: [ self cancel ]