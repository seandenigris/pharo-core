*RPackage-SystemIntegration
systemClassReorganizedActionFromBis: ann
	"only to keep old code somewhere"
	"when a class is reorganized, we have to check if an extension has not been added"
	
	|class|
	self flag: 'Not sure this method is usefull. If we remove a category, it seems that we will remove the methods inside, therefore the remove method announcement will do the job. Then all other modifications does not impact the packages'.
	"The event ReorganizedEvent is lauched for several cases:
		- we rename a protocol (see 'renameCategory:toBe: '). if The category is not empty, SystemMethodRecategorizedAnnouncement will also be emitted // THE WORK WILL BE DONE BY  SystemMethodRecategorizedAnnouncement
		- we sort (modify the order of) protocols (see 'sortCategories') // WE DON'T CARE HERE
		- we add a protocol (see 'addCategory:before:') // WE DON'T CARE HERE'
		- we remove a protocol (see 'removeCategory:' 'removeEmptyCategories') // THE WORK SHOULD BE DONE BY  SystemMethodRemovedAnnouncement
		
		
	So the work here is quite big :) The event only provide a reference to the class that has been modified. So I guess we have to:
		=> we check that each extending rPackage contain all methods from the corresponding extension category (as extension methods)
		=> the parentPackage of the class includes all methods defined in classic categories
	".
	class := ann methodClass.
	class organization categories do: [:aString |
		(aString beginsWith: '*')
			ifTrue: [
				"here we deal with extension-categories"
				|extendingPackageName extendingPackage|
				extendingPackageName := aString copyWithout: $*.
				extendingPackage := self packageMatchingExtensionName: extendingPackageName.
				extendingPackage ifNotNil: [
					"we check that all extension method for this classs in the rpackage correspond to all methods in the extension category"
					(class methodsInCategory: aString) do: [:aMethodsSelector |
					
					"If the method origin is not the one of the event, we do not care about that method"
					(class >> aMethodsSelector) origin = ann methodClass ifFalse: [^self].
						((extendingPackage extensionMethodsForClass: class) includes: (class methodDict at: aMethodsSelector))
							ifFalse: [
								"if a method has not been yet registered in the rPackage, we add it"
								((class methodDict at: aMethodsSelector) packageFromOrganizer: self ) removeMethod: (class methodDict at: aMethodsSelector).
								extendingPackage addMethod: (class methodDict at: aMethodsSelector).
								]  
						]
					]
				]
			ifFalse: [
				"here we deal with classic categories"
				(class methodsInCategory: aString) do: [:aMethodSelector |
					"aMethodSelector can come from a trait used by class. Such a method should always belong to to the trait and therefore to the parent package of the trait"
					(class traitOrClassOfSelector: aMethodSelector) = class ifFalse: [^self].
					((class package definedMethodsForClass: class) includes: (class methodDict at: aMethodSelector ) )
						ifFalse: [
							((class methodDict at: aMethodSelector) packageFromOrganizer: self) removeMethod: (class methodDict at: aMethodSelector).
							class package addMethod: (class methodDict at: aMethodSelector)
							]
					]
				]
			
		].
	