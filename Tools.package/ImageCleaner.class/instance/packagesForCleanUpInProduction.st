cleaning
packagesForCleanUpInProduction
	"A list of packages who will be unloaded when going to production.
	 WARNING, ORDER IS IMPORTANT"
	
	^#(
	"Manifest & Critics Browser"
	'Manifest-Core'
	'Manifest-CriticBrowser'
	'Manifest-Tests'
	'Manifest-Resources-Tests'
	"Metacello"
	'Metacello-ToolBox'
	'Metacello-MC'
	'Metacello-Platform'
	'Metacello-Core'
	'Metacello-Base'
	"CI"
	'CI-Core-SliceSubmitter'
	'CI-Loader'
	'CI-Core')