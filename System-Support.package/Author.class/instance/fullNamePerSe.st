accessing
fullNamePerSe

	"Answer the currently-prevailing author full name, such as it is, empty or not"
	^  Smalltalk globals at: #UsersManager 
		ifPresent: [:usersManager | usersManager default currentUser userNameFor: #author]
		ifAbsent: [ fullName ]
		