actions
list
	self hasConfiguration 
		ifTrue: [ self listConfigurationDetails ]
		ifFalse: [ self listConfigurations ]