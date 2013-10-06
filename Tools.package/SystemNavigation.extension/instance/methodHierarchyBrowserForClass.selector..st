*Tools-Browser
methodHierarchyBrowserForClass: aClass selector: sel
	"Create and schedule a message set browser on all implementors of the 
	currently selected message selector. Do nothing if no message is selected."
	
	| list |
	aClass ifNil: [^ self].
	aClass isTrait ifTrue: [^ self].
	sel ifNil: [^ self].
	list := OrderedCollection new.

	aClass allSuperclasses reverseDo: [:cl |
		(cl includesSelector: sel) ifTrue: [
			list addLast: ( (cl>>sel) methodReference )]].
	aClass allSubclassesDo: [:cl | 
		(cl includesSelector: sel) ifTrue: [
			list addLast: ( (cl>>sel) methodReference )]].

	list addLast: ((aClass>>sel) methodReference).
	^ self browseMessageList: list name: 'Inheritance of ' , sel
