subclass responsibilities
systemConverterClass
       OSPlatform isWin32
               ifTrue: [^ UTF8TextConverter].
 	OSPlatform isMacOSX
		ifTrue: [ ^ UTF8TextConverter ].
	OSPlatform isMacOS
		ifTrue: [^MacRomanTextConverter].
       OSPlatform isUnix
              ifTrue: [^ UTF8TextConverter].
       ^ Latin1TextConverter 