tests
testSortedCollectionWithClassVariableChanges
	"Tests serialization of a SortedCollection whose sortBlock has a reference to a class variable and its value is changed. See also FLBlockClosureSerializationTest >> testBlockClosureWithClassVariableChanges  and FLCompiledMethodSerializationTest >> testMethodChangingClassVariable"

	| aSortedCollection materialized |
	ClassVariableForTesting := false.
	
	aSortedCollection := self class sortedCollectionForTestingWithClassVariable.
	materialized := self resultOfSerializeAndMaterialize: aSortedCollection.
	"the class variable ClassVariableForTesting should be false"
	self deny: (materialized sortBlock outerContext method literalAt: 3) value.
	ClassVariableForTesting := true.
	"the class variable ClassVariableForTesting should be true"
	self assert: (materialized sortBlock outerContext method literalAt: 3) value.
	