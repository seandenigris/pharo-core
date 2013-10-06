menu
menu: aMenu shifted: aBoolean

	aMenu
		add: 'Browse' translated
			target: self
			selector: #browseCritic;
		add: 'Senders' translated
			target: self
			selector: #sendersOfCritic;
		add: 'Implementors' translated
			target: self
			selector: #implementorsOfCritic;
		addLine;
		add: 'Mark selected critic as false Positive' translated
			target: self
			selector: #addCriticToFalsePositive;
		"add: 'Mark selected critic as false Positive with a comment' translated
			target: self
			selector: #addCriticWithCommentToFalsePositive;"
		add: 'Unmark selected critic as false Positive' translated 
			target: self
			selector: #removeCriticToFalsePositive;
		add: 'Mark all critics as false Positive' translated
			target: self
			selector: #addAllCriticsToFalsePositive;
		add: 'Unmark all critics as false Positive' translated
			target: self
			selector: #removeAllCriticsToFalsePositive;
		addLine;
		add: 'Mark selected critic as TODO' translated
			target: self
			selector: #addCriticToToDo;
		"add: 'Mark selected critic as TODO with comment' translated
			target: self
			selector: # addCriticWithCommentToToDo;"
		add: 'Unmark selected critic as TODO' translated
			target: self
			selector: #removeCriticToToDo;
		addLine;
		add: 'Mark selected class as false Positive' translated
			target: self
			selector: #addClassToFalsePositive;
		add: 'Unmark selected class as false Positive' translated
			target: self
			selector: #removeClassToFalsePositive;
		addLine;
		add: 'Ban this rule for the selected package' translated
			target: self
			selector: #addRuleToFalsePositive;
		add: 'Unban this rule for the selected package' translated
			target: self
			selector: #removeRuleToFalsePositive.
	^ aMenu