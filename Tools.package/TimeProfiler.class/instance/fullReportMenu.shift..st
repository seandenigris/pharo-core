UI specific
fullReportMenu: MenuMorph shift: aBoolean
	^ (PragmaMenuBuilder 
		pragmaKeyword: 'TimeProfilerFullReportMenu'
		model: self) menu 