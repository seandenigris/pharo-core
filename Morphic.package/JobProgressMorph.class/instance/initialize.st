initialize
initialize
	"Initialization code for JobProgressMorph"

	super initialize.

	self addDependent: SystemProgressMorph uniqueInstance.