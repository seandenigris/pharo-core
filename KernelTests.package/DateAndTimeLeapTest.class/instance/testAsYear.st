testing
testAsYear
	self assert: aDateAndTime asYear equals: ((Year starting: '02-29-2004' asDate) translateTo: 2 hours ).  
	self deny: aDateAndTime asYear = ((Year starting: '01-01-2004' asDate) translateTo: 2 hours)  