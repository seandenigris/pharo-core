private
isActivePlatform
	^OSPlatform isMacOS and: [OSPlatform version asNumber >= 1000]