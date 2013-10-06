menus behavior
removeMethods

	self selectedClass 
		ifNotNil: [:class |
			self selectedMethods
				ifNotEmpty: [:items || scroll needToUpdate selectedMethodStillExists |
					scroll := methodWidget vScrollValue.
					needToUpdate := self removeMethods: items inClass: class.
					
					needToUpdate ifTrue: [ 
						self resetMethodsListSelection.
						methodWidget updateList ].
					
					(class methodDict values includes: self selectedMethod)
						ifFalse: [ self selectedMethod: nil ].
						
					self resetMethodsListSelection.
					methodWidget
						updateList;
						vScrollValue: scroll. ]]