private
reapplyThisRule

	| rule |
	rulesModel selectedItem isNil
		ifTrue: [^ self].
	rule := rulesModel selectedItem. 
	rule leaves do: [:each |	self reapplyRule: each]. 