enumerating
select: aBlock 
	"Refer to the comment in Collection|select:."
	| aStream each |
	aStream := (self species new: self size) writeStream.
	1 to: self size do: 
		[:index |
		(aBlock value: (each := self at: index))
			ifTrue: [aStream nextPut: each]].
	^ aStream contents