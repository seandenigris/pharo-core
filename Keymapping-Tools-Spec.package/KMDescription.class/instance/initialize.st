initialization
initialize
	"Initialization code for KMDescription"

	categories := nil asValueHolder.
	super initialize.

	updatingBlock := [:col || dropListItems |
		dropListItems := col collect: [:cat | DropListItem named: cat name do: [| items |
																items := (cat entriesAt: #all) keymaps collect: [:e | collectingBlock value: e ].
																list items:  (items sorted: sortingBlock) ]].
		dropList items: dropListItems ].