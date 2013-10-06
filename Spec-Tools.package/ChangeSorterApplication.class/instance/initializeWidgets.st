initialization
initializeWidgets

	self instantiateModels: #(
		methodsListModel ListComposableModel
		classesListModel ListComposableModel
		changesListModel ListComposableModel
		prettyButton CheckBoxModel
		diffButton CheckBoxModel
		textModel TextModel ).
	 
	self setFocus.
	
	methodsListModel menu: [:menu :shifted | self messageMenu: menu shifted: shifted ].
	changesListModel menu: [:aMenu :shifted | self changeSetMenu: aMenu shifted: shifted  ].
	classesListModel menu: [:aMenu :shifted | self classMenu: aMenu shifted: shifted ].

	changesListModel items: self model allChanges.
	changesListModel displayBlock: [:item | item name ].
	textModel aboutToStyle: true.
	