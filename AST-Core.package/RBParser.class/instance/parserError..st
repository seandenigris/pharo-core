error handling
parserError: aString 
	"Let the errorBlock try to recover from the error."
	| errorNode |
	errorNode := self errorBlock cull: aString cull: self errorPosition cull: self.
	errorNode isNil ifFalse: [ ^ errorNode ].
	SyntaxErrorNotification
					inClass: Object
					category: nil
					withCode: source
					doitFlag: false
					errorMessage: aString
					location: currentToken start