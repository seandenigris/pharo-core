list protocol
acceptDroppingMorph: aMorph atIndex: index event: evt

	self dropItemSelector 
		ifNotNil: [| item |
			item := aMorph passenger first.
			self model perform: self dropItemSelector with: item with: index ]
		ifNil: [ 
			self model
				acceptDroppingMorph: aMorph
				event: evt
				inMorph: self ]