openMenuIn: aBlock
	| caption index |
	caption := node name, ' appears to be 
uninitialized at this point.
Proceed anyway?'.
	index := aBlock value: #('yes' 'no') value: #() value: caption.
	^ self resume: index = 1