menus behavior
restrictedBrowseGroups: aCollection

	aCollection
		ifNotEmpty: [:groups || elements newEnvironment |
			elements := groups gather: [:group | group elements].
			newEnvironment := self browsedEnvironment forClasses: (elements collect: #theNonMetaClass).
			self model class openOnGroup: groups first inEnvironment: newEnvironment ]