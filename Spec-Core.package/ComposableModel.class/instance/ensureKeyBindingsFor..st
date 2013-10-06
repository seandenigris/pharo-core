private-focus
ensureKeyBindingsFor: aWidget

	aWidget on: self eventKeyStrokeForPreviousFocus do: [ self giveFocusToPreviousFrom: aWidget ].
	aWidget on: self eventKeyStrokeForNextFocus do: [ self giveFocusToNextFrom: aWidget ].
	
	additionalKeyBindings associationsDo: [:association | aWidget on: association key do: association value ]