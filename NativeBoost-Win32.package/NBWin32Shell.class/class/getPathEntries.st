accessing
getPathEntries
	"Return the PATH entries"
	
	^(self getEnvironmentVariable: 'PATH') findTokens: $;