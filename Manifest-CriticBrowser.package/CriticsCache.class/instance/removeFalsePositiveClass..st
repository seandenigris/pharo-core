add/remove
removeFalsePositiveClass: aClass
	|fp|
	
	
	falsePositiveClasses remove: aClass ifAbsent: [^ self]. 
	
	critics keysAndValuesDo: [:rule :criticss |
		fp := criticss select: [:critic |
			aClass = (critic isCompiledMethod 
				ifTrue: [critic methodClass theNonMetaClass]
				ifFalse: [critic])].
		fp do: [:each |
			self removeFalsePositive: each forRule: rule ]
			
			].
	browser updateTree.	