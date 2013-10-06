private
logFalsePositiveRulesInManifest
	| manifestBuilder |
	
	falsePositiveRules keysAndValuesDo: [:package :rules |
			manifestBuilder := BuilderManifest ofPackageNamed: package packageName.
			(manifestBuilder rejectRules \ rules) 
				do: [:rule |
					manifestBuilder removeRejectRule: rule]. 
			(rules \ manifestBuilder rejectRules) 			
				do: [:rule |
					manifestBuilder addRejectRule: rule]].
	


	