inspectIt: aKeyboardEvent
	"Inspect the selection -- invoked via cmd-i.  If there is no current selection, use the current line.  1/17/96 sw
	 2/29/96 sw: don't call selectLine; it's done by inspectIt now"

	Smalltalk tools userManager canInspect ifFalse: [ ^ false ].
	self inspectIt.
	^ true