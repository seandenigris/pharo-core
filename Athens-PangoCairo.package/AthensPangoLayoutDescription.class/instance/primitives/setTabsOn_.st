setTabsOn: anAthensParagraph
	| tabsArray | 
	tabsArray := AthensPangoTabs	tabs: tabs.
	tabsArray loadOn: anAthensParagraph.
	tabsArray finalize.
		