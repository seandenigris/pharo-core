testWordCannotExtendPointerWithFields

	self shouldnt: [ :builder | 
			builder 
				layoutClass: PointerLayout;
				slots: { #a } ]
		extendWith: [ :builder | 
			builder layoutClass: WordLayout ]