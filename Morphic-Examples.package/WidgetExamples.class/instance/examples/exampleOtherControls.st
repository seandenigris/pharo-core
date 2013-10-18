exampleOtherControls
	"Open a window with examples of each of the other controls."
	"self new exampleOtherControls"
	
	|dialog builder image emboss fuzzy|
	builder := self exampleBuilder.
	dialog := (builder newPluggableDialogWindow: 'Example other controls') useDefaultOKButton.
	emboss := (dialog newString: 'Hello there') trackPaneColor: false.
	fuzzy := (dialog newFuzzyLabel: 'A Fuzzy Label') minHeight: 40; minWidth: 160.
	dialog contentMorph: (dialog newRow: {
		dialog newTitle: 'Alpha Image' for: (
			dialog newColumn: {
				((image := dialog newAlphaImage: nil help: 'This is an alpha image')
					borderWidth: 1;
					extent: 160@160).
				dialog newLabelGroup: {
				'Scale'->(dialog newSliderFor: image getValue: #scale setValue: #scale:
					min: 0 max: 4 quantum: nil
					getEnabled: nil help: 'The image scale 0..1').
				'Alpha'->((dialog newAlphaSelector: image getAlpha: #alpha setAlpha: #alpha: help: 'The image alpha')
					vResizing: #shrinkWrap;
					minHeight: 16).
				'Layout'->(dialog newDropListFor: image list: #layoutSymbols
					getSelected: #layout setSelected: #layout:
					getEnabled: nil useIndex: false help: 'The image layout')}}).
		dialog newVerticalSeparator.
		dialog newLabelGroup: {
			'Color presenter'->((dialog newColorPresenterFor: (ValueHolder new contents: (Color blue alpha: 0.6))
					getColor: #contents help: 'This is a color presenter')
					vResizing: #shrinkWrap).
			'Color chooser'->(dialog newColorChooserFor: emboss
					getColor: #color setColor: #color: help: 'This is a color chooser').
			'Row with dashed border'->((dialog newRow: {dialog newLabel: 'I have a dashed border!'})
					borderStyle: (DashedBorder width: 3
							dashColors: {Color red. Color green. Color blue} dashLengths: #(1 2 3))).
			'Embossed string'->emboss.
			'Style'->(dialog newDropListFor: emboss list: #styleSymbols
					getSelected: #style setSelected: #style:
					getEnabled: nil useIndex: false help: 'The embossed string style').
			'Fuzzy label'->fuzzy.
			'Offset'->(dialog newSliderFor: fuzzy getValue: #offset setValue: #offset:
					min: 0 max: 5 quantum: 1
					getEnabled: nil help: 'The fuzzy label offset').
			'Alpha'->((dialog newAlphaSelector: fuzzy getAlpha: #alpha setAlpha: #alpha:
					help: 'The fuzzy label alpha')
					vResizing: #shrinkWrap;
					minHeight: 16) } } );
		model: nil.
		
		builder openModal: dialog