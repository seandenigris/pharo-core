instance creation
browseStream: aStream named: aString

	| browser |
	Cursor wait showWhile: [ | package packageDict organizer |
		packageDict := Dictionary new.
		browser := self new.
		organizer := SystemOrganizer defaultList: Array new.
		package := (FilePackage new fullName: aString; fileInFrom: aStream).
		packageDict 
			at: package packageName 
			put: package.
		organizer 
			classifyAll: package classes keys 
			under: package packageName.
		(browser := self systemOrganizer: organizer)
			packages: packageDict].
	self
		openBrowserView: browser createViews
		label: 'File Contents Browser'.