instance creation
user: nameString hasPassword: passwordString

	^ self new
			username: nameString;
			password: passwordString;
			yourself.