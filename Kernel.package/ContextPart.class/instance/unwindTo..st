private-exceptions
unwindTo: aContext

	| ctx unwindBlock |
	ctx := self.
	[(ctx := ctx findNextUnwindContextUpTo: aContext) isNil] whileFalse: [
		(ctx unwindComplete) ifNil:[
			ctx unwindComplete: true.
			unwindBlock := ctx unwindBlock.
			unwindBlock value]
	].