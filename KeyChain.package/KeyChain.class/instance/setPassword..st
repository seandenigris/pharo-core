protocol
setPassword: aPassword

	(password isNil or: [ self isUnlocked ])
		ifTrue: [ | oldPassword |
			oldPassword := password.
			password := encryptor encrypt: aPassword.
			"Since the passwords are encoded using the password, if you change the password, you have to re-encrypt the passwords"
			self reEncryptKeysBased: oldPassword ]