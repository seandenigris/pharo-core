instance creation
basicNamed: aString
	"We force the creation of a PackageInfo to keep backward compatibility of tools"

	self flag: #hack.
	PackageInfo named: aString.
	^ self basicNew
		initialize: aString;
		yourself