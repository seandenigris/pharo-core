private
ok
	| it |
	(it := keychainEditingWrapper contents) ifNil: [ ^ self ].
	
	it group: groupTextField getText asSymbol.
	it usernamePassword username: usernameTextField getText.
	it usernamePassword password: password.