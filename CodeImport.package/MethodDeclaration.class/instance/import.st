importing
import
	(self existsBehavior)
		ifFalse: [ self error: ('Cannot install method in unexistent behavior {1}' format: { behaviorName asString } ) ].
	
	^self targetClass
		compile: contents
		classified: categoryName
		withStamp: stamp
		notifying: nil