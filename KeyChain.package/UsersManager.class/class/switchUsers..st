menu
switchUsers: aBuilder 
	"I build a menu"
	"<worldMenu>"
	(aBuilder item: #'Switch User')
		parent: #System;
		order: 1.5;
		icon: (UITheme current iconNamed: #userIcon);
		action: [ self default openSwitchUsers ]