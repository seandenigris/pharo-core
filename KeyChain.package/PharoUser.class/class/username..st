instance creation
username: username

	^ UsersManager default users
		detect: [:e | e username = username ] 
		ifNone: [	
			self new
				username: username;
				yourself ]