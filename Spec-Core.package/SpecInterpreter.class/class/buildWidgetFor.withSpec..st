protocol
buildWidgetFor: aComposableModel withSpec: aSymbol
	
	^ self interpretASpec: (aComposableModel class perform: aSymbol) model: aComposableModel