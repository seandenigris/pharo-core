backward compatibility
removeCategory: aProtocolName
	| oldCategories |
	
	oldCategories := self protocolOrganizer allProtocolsNames copy.
	self protocolOrganizer removeProtocolNamed: aProtocolName.
	self notifyOfChangedCategoriesFrom: oldCategories to: self protocolOrganizer allProtocolsNames.