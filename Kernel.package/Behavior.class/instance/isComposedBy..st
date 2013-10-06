accessing
isComposedBy: aTrait
	"Answers if this object includes trait aTrait into its composition"
	aTrait isTrait 
		ifFalse: [ self error: aTrait name, ' is not a Trait'].
	^self hasTraitComposition 
		ifTrue: [ self traitComposition includesTrait: aTrait ]
		ifFalse: [ false ]