objectChanged
	"triggered when the inspected object is changed"
	
	self updateList.
	
	self text doItReceiver: self object. 
	self description doItReceiver: self object.
	