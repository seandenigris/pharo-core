elementsDo: aBlock

	elements values
		do:[ :collection| collection do:[ :each| aBlock value: each ] ]