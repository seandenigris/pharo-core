testAsPluralBasedOn

self assert: ('test' asPluralBasedOn: #(1)) = 'test'.
self assert: ('test' asPluralBasedOn: #(1 2 3)) = 'tests'.
self assert: ('test' asPluralBasedOn: 1) = 'test'.
self assert: ('test' asPluralBasedOn: false) = 'tests'.
self assert: ('� � � � � � � � � � � �' asPluralBasedOn: 10) = '� � � � � � � � � � � �s'.
self assert: ('' asPluralBasedOn: 1) = ''.
self assert: ('%' asPluralBasedOn: 10) = '%s'.