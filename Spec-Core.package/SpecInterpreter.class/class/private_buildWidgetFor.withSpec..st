private
private_buildWidgetFor: aComposableModel withSpec: aSymbol
	
	^ self private_interpretASpec: (aComposableModel class perform: aSymbol) model: aComposableModel