cleaning
classesForCleanUpInProduction
	"A list of classes who will be unloaded when going to production.
	 WARNING, ORDER CAN BE IMPORTANT"
	
	^#(
	"Configurations"
	'ConfigurationOf*'
	"Manifest & Critics Browser"
	'Manifest*')