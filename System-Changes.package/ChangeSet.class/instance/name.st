accessing
name
	"The name of this changeSet. If name is nil, we've got garbage.  Help to identify."

	^ name isNil
		ifTrue: [ '<no name -- garbage?>' ]
		ifFalse: [ name ]