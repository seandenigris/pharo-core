accessing
encryptedDisplayScannerFor: para foreground: foreColor background: backColor ignoreColorChanges: shadowMode
	^ (EncryptedMultiDisplayScanner new text: para text textStyle: para textStyle
			foreground: foreColor background: backColor fillBlt: self
			ignoreColorChanges: shadowMode)
		setPort: self shallowCopy