menu
menuDictionaryFieldList: aBuilder
	<contextMenu>
	<dictionaryInspectorFieldListMenu>
	
	(aBuilder item: #'Inspect')
		selector: #inspectSelection.
	(aBuilder item: #'Copy name')
		selector: #copyName.
	(aBuilder item: #'References')
		selector: #selectionReferences.
	(aBuilder item: #'Senders of this key')
		selector: #sendersOfSelectedKey.
	(aBuilder item: #'Refresh view')
		selector: #refreshView.
	(aBuilder item: #'Add key')
		selector: #addEntry;
		withSeparatorAfter.
		
	(aBuilder item: #'Rename key')
		selector: #renameEntry.
	(aBuilder item: #'Remove')
		selector: #removeSelection.
	(aBuilder item: #'Basic inspect')
		selector: #inspectBasic.