encryption
reEncryptKeysBased: aFormerBase

	bindings associations do: [:assoc || oldUsernamePassword string |
				oldUsernamePassword := bindings at: assoc key.
				string := encryptorDecryptor decrypt: oldUsernamePassword password base: aFormerBase.
				bindings at: assoc key put: ( UsernamePassword username: oldUsernamePassword username password: (self encryptPassword: string) )]