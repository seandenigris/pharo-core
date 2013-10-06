private
unwrap: aCollection
	| unwrapCollection rgobject |

	unwrapCollection := OrderedCollection new.
	aCollection
		do: [ :each | 
		"	(each first first) = (Character value: 40) ifFalse: ["
			rgobject := (Smalltalk at: (each first first)) manifestReadOn:  (each first at:2).
			(rgobject isClass and: [ rgobject  realClass notNil ])
				ifTrue: [ unwrapCollection add: rgobject realClass ].
			(rgobject isMethod and: [ rgobject method notNil ])
				ifTrue: [ unwrapCollection add: rgobject method ] ].
	^ unwrapCollection