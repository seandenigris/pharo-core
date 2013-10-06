tests - fixture
test0FixtureCopyPartOfSequenceableTest
	
	self shouldnt: [self collectionWithoutEqualElements ] raise: Error.
	self collectionWithoutEqualElements do:
		[:each | self assert: (self collectionWithoutEqualElements occurrencesOf: each)=1].
	
	self shouldnt: [self indexInForCollectionWithoutDuplicates ] raise: Error.
	self assert: self indexInForCollectionWithoutDuplicates >0 & self indexInForCollectionWithoutDuplicates < self collectionWithoutEqualElements size.
	
	self shouldnt: [self empty] raise: Error.
	self assert: self empty isEmpty .