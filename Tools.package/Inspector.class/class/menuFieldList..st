menu
menuFieldList: aBuilder
	<contextMenu>
	<inspectorFieldListMenu>
	
	| target selection |
	
	target := aBuilder model.
	selection := target selection.
	
	(aBuilder item: #'Inspect')
		keyText: 'i';
		selector: #inspectSelection;
		icon: UITheme current smallInspectItIcon.
	(aBuilder item: #'Explore')
		keyText: 'I';
		selector: #exploreSelection;
		icon: UITheme current smallInspectItIcon.
		
	(((selection isMemberOf: Array) or: [selection isMemberOf: 
		OrderedCollection]) and: [ selection size > 0]) 
		ifTrue: [
			(aBuilder item: #'Inspect element...')
				selector: #inspectElement ].

	(selection isKindOf: MorphExtension) 
		ifTrue: [
			(aBuilder item: #'Inspect property...')
				selector: #inspectElement ].
							
	aBuilder withSeparatorAfter.		
	(aBuilder item: #'Method refs to this inst var')
		selector: #referencesToSelection.
	(aBuilder item: #'Methods storing into this inst var')
		selector: #defsOfSelection.
	(aBuilder item: #'Explore pointers')
		selector: #explorePointers.
	(aBuilder item: #'Explore strong pointers')
		selector: #exploreStrongPointers;
		withSeparatorAfter.
		
	(aBuilder item: #'Browse full')
		keyText: 'b';
		selector: #browseMethodFull.
	(aBuilder item: #'Browse class')
		selector: #browseClass.
	(aBuilder item: #'Browse hierarchy')
		keyText: 'h';
		selector: #classHierarchy;
		withSeparatorAfter.
		
	(aBuilder item: #'Inst var refs...')
		selector: #browseInstVarRefs.
	(aBuilder item: #'Inst var defs...')
		selector: #browseInstVarDefs.
	(aBuilder item: #'Class var refs...')
		selector: #classVarRefs.
	(aBuilder item: #'Class variables')
		selector: #browseClassVariables.
	(aBuilder item: #'Class refs')
		keyText: 'N';
		selector: #browseClassRefs;
		withSeparatorAfter.
		
	(aBuilder item: #'Copy name')
		keyText: 'c';
		selector: #copyName.
	(aBuilder item: #'Basic inspect')
		selector: #inspectBasic.