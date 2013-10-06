accessing method dictionary
addAndClassifySelector: selector withMethod: compiledMethod inProtocol: category notifying: requestor
	| priorMethodOrNil oldProtocol newProtocol |
	
	priorMethodOrNil := self compiledMethodAt: selector ifAbsent: [nil].
	
	self addSelectorSilently: selector withMethod: compiledMethod.
	
	oldProtocol := self organization categoryOfElement: selector.
	SystemAnnouncer uniqueInstance 
		suspendAllWhile: [ self organization classify: selector under: category ].
		
	newProtocol := self organization categoryOfElement: selector.
	priorMethodOrNil isNil
		ifTrue: [
			SystemAnnouncer uniqueInstance 
				methodAdded: compiledMethod 
				selector: selector 
				inProtocol: category 
				class: self 
				requestor: requestor]
		ifFalse: [
			"If protocol changed and someone is from different package, I need to throw a method recategorized"
			newProtocol = oldProtocol			
				ifFalse: [ 
					| oldPackage newPackage |
							
					"Check for repackage"
					newPackage := RPackage organizer 
						packageForProtocol: newProtocol 
						inClass: self.
					oldPackage := RPackage organizer 
						packageForProtocol: oldProtocol 
						inClass: self.
					(newPackage = oldPackage)
						ifFalse: [ 
							SystemAnnouncer uniqueInstance 
								 methodRepackaged: compiledMethod 
								from: oldPackage 
								to: newPackage ].
							
					"Announce recategorization"
					SystemAnnouncer uniqueInstance 
						selector: selector 
						recategorizedFrom: oldProtocol 
						to: newProtocol 
						inClass: self	 ].	
			
			SystemAnnouncer uniqueInstance 
				methodChangedFrom: priorMethodOrNil 
				to: compiledMethod 
				selector: selector 
				inClass: self 
				oldProtocol: oldProtocol 
				newProtocol: newProtocol 
				requestor: requestor.]. 