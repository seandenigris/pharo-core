queries
methodsFor: aClass

	^ aClass methodDict values sort: [:a :b | a selector < b selector ]