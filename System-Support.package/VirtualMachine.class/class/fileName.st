accessing
fileName

	^ (FilePath pathName: (self fullPath) isEncoded: true) asSqueakPathName