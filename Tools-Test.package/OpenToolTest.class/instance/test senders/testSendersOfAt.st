testSendersOfAt
	| senders |
	senders := SystemNavigation default browseAllSendersOf: #name.
	senders changed.
	senders close.