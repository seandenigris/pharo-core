nautilus menu
buildNautilusMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package target mc |
	target := aBuilder model.
	(package := target selectedPackage) ifNil: [ ^self ].
	mc := NautilusMCBindings default retrieveMCPackageFor: package.
	
	mc isNil or: [ mc workingCopy modified not ifTrue: [ ^self ] ].
	(aBuilder item: #'Open new bug report and attach changes of this package')
		action: [ self new 
						receiver: target window;
						mcPackage: mc;
						submitNewSlice ];
		order: 1299.5;
		icon: UITheme current forwardIcon;
		help: 'Create a bug entry and a slice for the selected package';
		withSeparatorAfter.
	