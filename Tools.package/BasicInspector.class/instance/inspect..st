as yet unclassified
inspect: anObject 
	"Initialize the receiver so that it is inspecting anObject."

	self initialize.
	object := anObject.
	selectionIndex := 1.
	contents := ''