accessing
analyzer
	analyzer isNil ifTrue: [ analyzer := self defaultAnalyzer ].
	^ analyzer