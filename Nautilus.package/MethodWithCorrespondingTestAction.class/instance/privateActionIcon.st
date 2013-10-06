order
privateActionIcon
	"Return the icon for this action"
	| testIcon |
	
	testIcon := self iconClass iconNamed: #testNotRun.
	
	testMethod hasPassedTest
		ifTrue: [ testIcon := self iconClass iconNamed: #testGreen ].
	testMethod hasFailedTest
		ifTrue: [ testIcon := self iconClass iconNamed: #testYellow ].
	testMethod hasErrorTest
		ifTrue: [ testIcon := self iconClass iconNamed: #testRed ].
	
	^ IconicButton new
		target: self browser;
		actionSelector: #runTestForAMethod:notifying:;
		arguments:  { method. true};
		labelGraphic: testIcon;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'Run the test';
		borderWidth: 0