menus behavior
categorizeAllUncategorizedMethods
	"Categorize methods by looking in parent classes for a method category."
	self selectedClass ifNotNil: [ :aClass | | methods |
		self flag: 'TODO: why the heck do all  the methods.* methods return selectors??'.
		methods := aClass uncategorizedMethods collect: [ :selector| aClass >> selector ].
		MethodClassifier classifyAll: methods ]