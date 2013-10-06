allContributors
	"Return the list of initials and names of method authors."
	"SystemNavigation new allContributors"
	
	| contributorsNames |
	contributorsNames := Bag new.
	self allBehaviorsDo: [ :behavior |
		behavior methodsDo: [ :compiledMethod | | stamp |
			stamp := compiledMethod timeStamp.
			stamp notEmpty ifTrue: [
				contributorsNames add: compiledMethod timeStamp substrings first ]]].
	^contributorsNames