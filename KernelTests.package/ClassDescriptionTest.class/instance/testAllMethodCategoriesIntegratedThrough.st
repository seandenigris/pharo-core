tests
testAllMethodCategoriesIntegratedThrough
	"If this test fails, it may be because method protocols are sorted in #allMethodCategoriesIntegratedThrough. Take care that if the protocols of the class under test are already sorted, you won't see any problem."
	self assert: ((CompiledMethod methodsInCategory: 'testing') includes: #isAbstract).
	CompiledMethod allMethodCategoriesIntegratedThrough: Object.
	self assert: ((CompiledMethod methodsInCategory: 'testing') includes: #isAbstract)