protocol
addAllItems
	
	toSelectModel getRoots do: [:item |  
		selectRule addAll: (item leaves) ].
	self updateTree.  	  