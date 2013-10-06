accessing
session
	"Answer the current session object.
	Currently, there is no assumptions about what protocol(s) a session object should conform to.
	The only valid use of session object is to compare it using identity comparison, i.e. #== 
	with another session object retrieved before, in order to detect session change. 
	
	A session changes every time image boots from disk. It doesn't changes on snapshot.
	"
	^ session ifNil: [ session := self newSessionObject ].