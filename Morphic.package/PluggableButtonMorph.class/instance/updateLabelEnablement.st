updating
updateLabelEnablement
	"Set the enabled state of the label if possible."
	
	(self labelMorph respondsTo: #enabled:) ifTrue: [
		self labelMorph enabled: self enabled]