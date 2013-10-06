initialization
registerListShortcutsFor: aWidget

	aWidget on: $b command do: [ self browseMethod ].
	aWidget on: $i command do: [ self inspectMethod ].
	aWidget on: $m command do: [ self browseMessages ].
	aWidget on: $n command do: [ self browseSendersOfMessage ].
	aWidget on: $n shift command do: [ self browseClassRefs ].
	aWidget on: $v command do: [ self browseVersions ].
	aWidget on: $x command do: [ self removeMethods ].