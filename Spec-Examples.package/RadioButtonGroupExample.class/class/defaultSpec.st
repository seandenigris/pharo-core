specs
defaultSpec

	^ { #Panel.
			#changeProportionalLayout.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 		self topSpec.
											#fullFrame:. 	#(0 0 1 0 0 0  0 20) }.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 		{#model. #container.}.
											#fullFrame:.	#(0 0 1 1 0 22 0 0) }.
			#hResizing:.	#shrinkWrap.
			#vResizing:.	#shrinkWrap.	}