as yet unclassified
produceDiffLinksForPackages
	"self defaultMCWaitingFolder allFileNames"
	"self new produceDiffLinksForPackages"
	
	| filenames |
	filenames := self waitingFolderMCZFiles.
	filenames := filenames reject: [:each | 'ScriptLoader*' match: each ].
	^ filenames collect: [:name |
			|diff |
			diff := name copyUpToLast: $. .
			diff := self diffServerRootString, diff, '.diff'
		]
		