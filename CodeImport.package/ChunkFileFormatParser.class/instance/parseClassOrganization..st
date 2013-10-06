parsing
parseClassOrganization: classOrganizationPreamble
	"The comment preable is an array with the following structure:
	If instance side method:
	#(#CodeImportTestCaseTestClass #reorganize)
	
	if class side:
	
	#(#CodeImportTestCaseTestClass #class #reorganize)
	
	"
	| behaviorName isMeta stamp |
	behaviorName := classOrganizationPreamble first.
	isMeta := (classOrganizationPreamble second = #reorganize) not.
	self addDeclaration: (ClassOrganizationDeclaration
							contents: self nextChunk
							behaviorName: behaviorName
							isMeta: isMeta)