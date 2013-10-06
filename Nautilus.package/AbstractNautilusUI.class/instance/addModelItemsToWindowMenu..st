menus
addModelItemsToWindowMenu: aMenu
	"Add model-related items to the window menu"
	"super addModelItemsToWindowMenu: aMenu."
	SystemBrowser addRegistryMenuItemsTo: aMenu inAccountOf: self model.

	aMenu addLine;
		add: 'Nautilus Plugins Manager'
		target: NautilusPluginManager new
		action: #openInWorld.
		
	aMenu
		add: 'Shortcuts description'
		target: self
		action: #openShortcutDescription.