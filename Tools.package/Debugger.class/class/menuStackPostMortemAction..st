menu
menuStackPostMortemAction: aBuilder
	<contextMenu>
	<debuggerStackPostMortemActionMenu>

	(aBuilder item: #'FullStack')
		keyText: 'f';
		selector: #fullStack.
	(aBuilder item: #'Where')
		keyText: 'w';
		selector: #where.