private
specWithExtra
	| width |
	
	width := self columnWidth.	
	
	^ SpecLayout composed
		add: #description origin: 0@0 corner: 0@0 offsetOrigin: 0@0 offsetCorner: width@50;
		add: #list origin: 0@0 corner: 0@1 offsetOrigin: 0@54 offsetCorner: width@(-79);
		add: #text origin: 0@1 corner: 0@1 offsetOrigin: 0@(-75) offsetCorner: width@0;
		add: #extra origin: 0@0 corner: 1@1 offsetOrigin: (width+4)@0 offsetCorner: 0@0;
		yourself