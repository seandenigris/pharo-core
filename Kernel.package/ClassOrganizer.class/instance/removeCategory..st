accessing
removeCategory: cat 
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		super removeCategory: cat].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.