specs
topSpec

	^ { #Panel.
			#changeTableLayout.
			#listDirection:.		#rightToLeft.
			#addMorph:. {#model.	#button1.}.
			#addMorph:. {#model.	#button2.}.
			#addMorph:. {#model.	#button3.}.
			#hResizing:.	#shrinkWrap.
			#vResizing:.	#shrinkWrap.	}