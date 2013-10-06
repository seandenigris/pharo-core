protocol
setUserName: user password: pass forGroup: group

	self isUnlocked
		ifTrue: [ 
			bindings 
				at: group 
				put: (UsernamePassword 
							username: user 
							password: (self encryptPassword: pass)).
			^ true ].
	^ false