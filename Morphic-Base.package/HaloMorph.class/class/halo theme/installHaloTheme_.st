installHaloTheme: haloSpecificationsSelector
	^ CurrentHaloSpecifications := self allHaloSpecsFromArray: (self perform: haloSpecificationsSelector).
