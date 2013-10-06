removeObsoleteSubclass: aClass
	"Remove aClass from the weakly remembered obsolete subclasses"
	| obs |
	obs := self basicObsoleteSubclasses at: self ifAbsent:[^ self].
	(obs includes: aClass) ifFalse:[^self].
	obs := obs copyWithout: aClass.
	obs := obs copyWithout: nil.
	self basicObsoleteSubclasses at: self put: obs