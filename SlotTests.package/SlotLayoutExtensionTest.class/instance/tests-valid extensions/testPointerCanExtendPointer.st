testPointerCanExtendPointer

	self should: [ :builder | 
			builder layoutClass: PointerLayout ]
		extendWith: [ :builder | 
			builder layoutClass: PointerLayout ]