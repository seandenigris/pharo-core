history
registerHistoryNewEntry

	| lastEntry wrapper |
	self browsingHistory isPaused ifTrue: [ ^ self ].
	wrapper := NautilusWrapper with: self.
	self browsingHistory entries ifNotEmpty:[:entries |
		lastEntry := entries last key.
		(lastEntry selectedClass isNil 
		or: [(wrapper selectedClass notNil 
			and: [wrapper selectedMethod = lastEntry selectedMethod 
			and: [ wrapper selectedClass theNonMetaClass = lastEntry selectedClass theNonMetaClass ]])]) 
				ifTrue: [ ^ self ]].
	wrapper showGroups
			ifTrue: [ wrapper selectedGroup ifNil:[ ^ self ]]
			ifFalse: [ wrapper selectedClass ifNil:[ ^ self ]].
	
	self browsingHistory add: wrapper.
	self triggerEvent: #historyChanged.