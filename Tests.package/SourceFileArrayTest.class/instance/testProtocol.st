testing
testProtocol
	"Test that we can access protocol correctly"
	"self debug: #testProtocol"

	| okCm notOkCm |
	okCm := Point>>#dist: .
	self assert: (SourceFiles sourcedDataAt: okCm sourcePointer) =   'Point methodsFor: ''point functions'' stamp: ''lr 7/4/2009 10:42'''.
	self assert: (SourceFiles protocolAt: okCm sourcePointer) = 'point functions'.
	
	notOkCm := Behavior >> #supermostPrecodeCommentFor:.
	self assert: (SourceFiles protocolAt: notOkCm sourcePointer) =  'accessing method dictionary'.
	