testKernelExtensions

	"test if kernel packages have extensions in non-kernel classes"

	| kernelClasses extendedClasses | 

	kernelClasses := Smalltalk kernelPackageNames gather: [ :packageName |
		(RPackageSet named: packageName) definedClasses ].

	extendedClasses := Smalltalk kernelPackageNames gather:[ :packageName |
		(RPackageSet named: packageName) extensionClasses ].

	self assert: (extendedClasses copyWithoutAll: (kernelClasses, (kernelClasses collect:[:c | c class]))) isEmpty