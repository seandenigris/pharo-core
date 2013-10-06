*Tools-Browser
browseAllStoresInto: instVarName from: aClass
	"Create and schedule a Message Set browser for all the receiver's methods 
	or any methods of a subclass/superclass that refer to the instance variable name."
	
	"self new browseAllStoresInto: 'contents' from: Collection."

	| coll |
	coll := OrderedCollection new.
	aClass withAllSubAndSuperclassesDo: [:class | 
			(class whichSelectorsStoreInto: instVarName) do: [:sel |
					coll add: (self createMethodNamed: sel realParent: class)]].
	^ self
		browseMessageList: coll 
		name: 'Stores into ' , instVarName 
		autoSelect: instVarName