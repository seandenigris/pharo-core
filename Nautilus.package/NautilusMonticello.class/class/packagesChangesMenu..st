monticello menus
packagesChangesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package mcpackage target |
	target := aBuilder model.
	(package := target selectedPackage) ifNil: [ ^ target ].
	mcpackage := (NautilusMCBindings default mcPackageFor: package).
	mcpackage ifNil: [ ^ self ].
	
	mcpackage isDirty
		ifTrue: [ 
			(aBuilder item: #('Changes with ',package name))
				label: 'Changes with...';
				order: 1295;
				help: 'Changes';
				icon: (self iconClass iconNamed: #monticelloPackage);
				enabledBlock: [ target selectedPackages size < 2 ].
				
	mcpackage workingCopy repositoryGroup repositories doWithIndex: [:repo : index |
		(aBuilder item: ('Repo',index printString))
					label: repo description;
					parent: #('Changes with ',package name);
					order: index;
					action: [ self default viewChangesFor: mcpackage in: repo ]]]