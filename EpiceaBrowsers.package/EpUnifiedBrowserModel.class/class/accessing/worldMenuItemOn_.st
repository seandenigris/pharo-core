worldMenuItemOn: aBuilder
	<worldMenu>

	(aBuilder item: 'Code Changes')
		parent: #Tools;
		action: [ self open ]; 
		icon: self icon;
		order: 0.5