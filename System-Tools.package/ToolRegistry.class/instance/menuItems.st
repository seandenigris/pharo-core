menu
menuItems
	"Answer the menu items available for this tool set"

	^#(
		('System Browser' 			#openClassBrowser)
		('Message Names'			#openMessageNames)
		-
		('Workspace'				#openWorkspace)
		('Transcript' 				#openTranscript)
		('File Browser'				#openFileList)
		-
		('Test Runner'				#openTestRunner)
		('Process Browser' 			#openProcessBrowser)
		-
		('Monticello Browser'		#openMonticelloBrowser)
		('Recover lost changes...'	#openRecentChangesLog)
		('Change Sorter'				#openDualChangeSorter)
	)