update30482
	"self new update30482"
	self withUpdateLog: '11681 Fix Debugger column printing
	https://pharo.fogbugz.com/f/cases/11681
	
4993 Typing cmd+L cancel all typing and we can not undo it
	https://pharo.fogbugz.com/f/cases/4993
	
11871 Small reoganization in tools
	https://pharo.fogbugz.com/f/cases/11871'.
	self loadTogether: self script137 merge: false.
	self flushCaches.