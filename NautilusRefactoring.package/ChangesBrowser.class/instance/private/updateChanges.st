updateChanges
	
	| aCompositeChange |
	aCompositeChange := RBCompositeRefactoryChange new.
	changes do: [:each | aCompositeChange addChange: each ].

	self flag: 'todo'. "Filter the shown changes depending on the selected scope"

	changesTree roots: (aCompositeChange whatToDisplayIn: self)