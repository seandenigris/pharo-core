private
initializeInstance

	^ SpecInterpreter
		private_interpretASpec: 
			{ self classSymbol.
				#useProportionalLayout.
				#addSplitters.
				#vSpaceFill.
				#hSpaceFill.} 
		model: DummyComposableModel new