sourceCodeRefactoringMenu: aBuilder
	<nautilusGlobalSourceCodeMenu>
	| target |
	target := aBuilder model.
	
	target selectedClass sourceCodeRefactoring: aBuilder.