running
runCase
	"Skip the test if we're in headless mode"
	self flag: 'Use skip feature once it is ready'.
	Smalltalk isHeadless
		ifTrue: [ ^ self skip ].
	^ super runCase 