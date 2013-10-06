I am used for transparent structures: that is, a structure is transparent if you know its fields and can modify them. This is in contrast of opaque structures, which you never manipulate directly but through functions.

For each struct type, you define a subclass of me, and implement the fieldsDesc class method. After that you do a initializeAccessors for that class and voila, field accessors are generated automatically.


Class Instance Variables:
	initialized	<Boolean>
	currentFields	<NBExternalStructureFields>