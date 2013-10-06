tests
testBuffering
	| morph flag category event1 event2 event3|
	category := KMCategory named: #TestBlah.
	
	morph := BorderedMorph new.
	morph kmDispatcher reset.
	KMRepository default attach: category to: BorderedMorph.
	
	flag := false.

	category addKeymapEntry: (KMKeymap named: #Foo shortcut: $a asShortcut, $b asShortcut, $c asShortcut action: [flag := true]).
	category addKeymapEntry: (KMKeymap named: #Bar shortcut: $p asShortcut, $p asShortcut
		action: []).
	morph attachKeymapCategory: #TestBlah.

	event1 := self eventKey: $a.
	morph kmDispatcher
		dispatchKeystroke: event1.
	self assert: morph kmDispatcher buffer size = 1.
	self assert: morph kmDispatcher buffer first = event1.
	
	event2 := self eventKey: $b.
	morph kmDispatcher
		dispatchKeystroke: event2.
	self assert: morph kmDispatcher buffer size = 2.
	self assert: morph kmDispatcher buffer first = event1.
	self assert: morph kmDispatcher buffer second = event2.
	
	event3 := self eventKey: $c.
	morph kmDispatcher
		dispatchKeystroke: event3.
	self assert: morph kmDispatcher buffer isEmpty.
	
	self assert: flag.