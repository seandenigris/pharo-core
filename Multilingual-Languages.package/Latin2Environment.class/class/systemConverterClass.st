subclass responsibilities
systemConverterClass

	OSPlatform isWin32 
		ifTrue: [^CP1250TextConverter ].

	^ ISO88592TextConverter.