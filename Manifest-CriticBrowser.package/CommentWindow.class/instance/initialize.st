initialization
initialize

	super initialize.
	
	okCancelToolBarModel := self instantiate: OkCancelToolbar. 
	commentInputFieldModel := self instantiate: TextModel.
	
	"commentInputFieldModel removeEntryCompletion "
	