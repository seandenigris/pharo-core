actions
expandAllFromNode: aNode
	self changed: {#rootNodes. #expandAllFromNode:. aNode}
	