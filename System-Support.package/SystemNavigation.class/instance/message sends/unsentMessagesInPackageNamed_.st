unsentMessagesInPackageNamed: packageName
	| unsentMessages |
	unsentMessages := self unsentMessagesInCategory: packageName.	
	(self categoriesInPackageNamed: packageName) do: [:category|
		unsentMessages addAll: (self unsentMessagesInCategory: category)].
	^unsentMessages 
	