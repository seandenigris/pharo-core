update30552
	"self new update30552"
	self withUpdateLog: '- Issue 12081: Show the package in the senders and implementors window
	https://pharo.fogbugz.com/f/cases/12088/
	
- Issue 12093: Make RGComment polymorphic to RGMEthod for packages
		https://pharo.fogbugz.com/f/cases/12093'.
	self loadTogether: self script207 merge: false.
	self flushCaches.