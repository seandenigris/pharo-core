as yet unclassified
on: repositoryUrl beUser: nameString withPassword: passwordString

	| credentials |
	credentials := MCServerCredentials user: nameString hasPassword: passwordString.
	registry at: repositoryUrl put: credentials.