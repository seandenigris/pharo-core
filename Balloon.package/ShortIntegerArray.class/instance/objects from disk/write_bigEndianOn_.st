write: shortInteger bigEndianOn: aStream
	^ aStream nextNumber: 4 put: shortInteger