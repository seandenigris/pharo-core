default

	^ UniqueInstance ifNil: [ UniqueInstance := super basicNew initialize ]