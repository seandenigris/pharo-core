*RPackage-SystemIntegration
hasPackageExactlyMatchingExtensionName: anExtensionName
	^packages keys anySatisfy: [ :aSymbol | (aSymbol sameAs: anExtensionName asSymbol)]