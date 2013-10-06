*RPackage-SystemIntegration
systemClassAddedActionFrom: ann

	| class rPackage categoryNameSymbol |
	class := ann classAffected.
	categoryNameSymbol := class category.
	rPackage := packages at: categoryNameSymbol ifAbsent: [
		"a class may be defined for a package that does not yet exist. In this case we have to create first the new package"
		self registerPackage: (self packageClass named: categoryNameSymbol).
		].		
	"when we add the class, the parent category should normally already be register correctly at the RPackageOrganizer"
	"this next line should import the class and all its methods: "
	rPackage importClass: class.
	rPackage addClassDefinition: class toClassTag: class category asSymbol.
	rPackage importClass: class theMetaClass
	"maybe the last update should be (is?) automatically done when adding or removing from a RPackage."
	"self default registerPackage: rPackage forClass: class"
	"maybe have to check for class and metaClass that will maybe both throw an event?
	=> seems to be correctly handled by RPackage"