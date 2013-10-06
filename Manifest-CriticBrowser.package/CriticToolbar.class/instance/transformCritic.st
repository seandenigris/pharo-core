private
transformCritic

	| changeCode rule selection |
	
	rule := ruleHolder contents
		ifNotNil: [:r | r ].
	rule isTransformationRule 
		ifFalse: [^ self].
			
	selection := criticHolder contents
		ifNotNil: [:critic | critic].			
	selection ifNotNil: [	
		changeCode := (rule changes detect: [:ch |
			((ch changeClassName) = (selection methodClass name)) & (ch selector = selection selector)]) source.
	
		selection methodClass compile: changeCode]