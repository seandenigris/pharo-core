image, changes names
imagePath
	"Answer the full path name for the current image."
	"SmalltalkImage current imageName"

	| str |
	str := self primImagePath.
	^ (FilePath pathName: str isEncoded: true) asSqueakPathName.