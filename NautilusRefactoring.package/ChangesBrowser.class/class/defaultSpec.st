specs
defaultSpec
	<spec>
	
	^ SpecLayout composed
		newColumn: [:c |
			c
				add: #pickList;
				addSplitter;
				add: #textArea;
				newRow: [:r |
					r
						add: #acceptButton;
						add: #cancelButton]
				height: 25 ]