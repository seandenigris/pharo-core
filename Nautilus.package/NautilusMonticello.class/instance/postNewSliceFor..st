monticello menus behavior
postNewSliceFor: aWindow
	| workingCopy |
	(workingCopy := self addSliceFor: aWindow) ifNil: [ ^ self ].
	self commit: workingCopy in: MCHttpRepository inboxRepository