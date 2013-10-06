private
askPasswordForKeyChain: attempt
	| string |
	
	password ifNil: [ ^ lastUnlock contents: true ].
	string := UITheme current 
				passwordEntryIn: StandardWindow new 
				text: 'Password for the keychain for ', username asString ,' (', (self maxAttemptsNumber - attempt) asString ,' tries left)'
				title: 'Password request'
				entryText: ''.
	string ifNil: [ ^ self ].		
	(encryptor encrypt: string) = password ifFalse: [ ^ self ].

	lastUnlock contents: true