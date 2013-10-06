settings
monticelloSettingsOn: aBuilder  
	<systemsettings>  
	(aBuilder group: #monticello)
		label: 'Monticello' translated;
		description: 'All Monticello settings' translated;
		with: [ 
			(aBuilder setting: #showAnnotationPane) 
				label: 'Show annotation pane' translated;
		 		target: MCCodeTool;
		 		description: 'If checked then the annotation pane is shown in Monticello tools; it is dynamically updated with useful informations about the code which is currently browsed' translated.
			(aBuilder setting: #defaultDirectoryName)
				type: #FileDirectory;
				target: MCDirectoryRepository;
				description: 'The path of a directory where you want to start out when choosing local repository locations' translated;
				label: 'Default local repository directory'.
			(aBuilder setting: #cacheDirectory)
				type: #FileDirectory;
				target: MCCacheRepository;
				description: 'The path of the local repository cache' translated;
				label: 'Local cache directory'.	
				
				].