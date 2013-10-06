tests - remove
testRemoveAllFoundIn
	"self debug: #testRemoveElementThatExists"
	| el aSubCollection |
	el := self nonEmptyWithoutEqualElements anyOne.
	aSubCollection := (self nonEmptyWithoutEqualElements copyWithout: el) copyWith: self elementNotIn.
	self 
		shouldnt: 
			[ | res | res := self nonEmptyWithoutEqualElements removeAllFoundIn: aSubCollection ]
		raise: Error.
	self assert: self nonEmptyWithoutEqualElements size = 1.
	self nonEmptyWithoutEqualElements do: [ :each | self assert: each = el ]