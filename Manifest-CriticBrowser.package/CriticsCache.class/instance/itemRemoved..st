add/remove
itemRemoved: aItem
	critics values do: [:each | each remove: aItem ifAbsent: []].
	toDos values do: [:each | each remove: aItem ifAbsent: []].
	falsePositives values do: [:each | each remove: aItem ifAbsent: []].
	
	self updateBrowser  