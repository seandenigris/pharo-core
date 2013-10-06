menu
menuStack: aBuilder
	<contextMenu>
	<debuggerStackMenu>

	(aBuilder item: #'Senders of...')
		keyText: 'n';
		selector: #browseSendersOfMessages.
	(aBuilder item: #'Implementors of...')
		keyText: 'm';
		selector: #browseMessages.
	(aBuilder item: #'Inheritance')
		keyText: 'i';
		selector: #methodHierarchy.
	(aBuilder item: #'Versions')
		keyText: 'v';
		selector: #browseVersions.
	(aBuilder item: #'Inst var refs...')
		selector: #browseInstVarRefs.
	(aBuilder item: #'Class var refs...')
		selector: #browseClassVarRefs.
	(aBuilder item: #'Class variables')
		selector: #browseClassVariables;
		withSeparatorAfter.
		
	(aBuilder item: #'Class refs')
		keyText: 'N';
		selector: #browseClassRefs.
	(aBuilder item: #'Browse full')
		keyText: 'b';
		selector: #browseMethodFull.
	(aBuilder item: #'File out')
		selector: #fileOutMessage.
	(aBuilder item: #'Inspect instances')
		selector: #inspectInstances.
	(aBuilder item: #'Inspect subinstances')
		selector: #inspectSubInstances;
		withSeparatorAfter.

	(aBuilder item: #'Copy to clipboard')
		selector: #copyToClipboard.
	(aBuilder item: #'Fuel out Stack')
		selector: #serializeStack.