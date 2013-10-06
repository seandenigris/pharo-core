creating - silently
silentlyNewSubclassOf: aClass instanceVariableNames: ivNamesString classVariableNames:  classVarsString category: category

	| default newClass |
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		newClass := aClass 
			subclass: self newName 
			instanceVariableNames: ivNamesString 
			classVariableNames: classVarsString 
			poolDictionaries: '' 
			category: (self packageName, '-', category) asSymbol.
	].

	self createdClasses add: newClass.
	^newClass
	