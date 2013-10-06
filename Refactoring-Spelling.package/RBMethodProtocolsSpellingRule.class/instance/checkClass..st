running
checkClass: aContext 
	| organizer |
	organizer := aContext selectedClass organization.
	organizer categories do: [ :protocol |
		(self checkSelector: protocol) do: [ :each |
			(organizer listAtCategoryNamed: protocol) do: [ :selector | 
				result
					addSearchString: each;
					addClass: aContext selectedClass
					selector: selector into: protocol ] ] ]