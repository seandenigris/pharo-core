accessing
addCategory: newCategory
	| r |
	r := super addCategory: newCategory.
	SystemAnnouncer uniqueInstance classCategoryAdded: newCategory.
	^ r