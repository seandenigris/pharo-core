groupRefactoringMenu: aBuilder
	<nautilusGlobalGroupMenu>
	| target |
	target := aBuilder model.
	
	target selectedClass groupRefactoring: aBuilder.