backward compatibility
renameCategory: oldName toBe: newName

	self protocolOrganizer 
		renameProtocol: oldName
		into: newName.
		
	self notifyOfChangedCategoryFrom: oldName to: newName.