addedToZnUrl: url
	| segments |
	segments := self findTokens: '/'.
	^ url withPathSegments: segments