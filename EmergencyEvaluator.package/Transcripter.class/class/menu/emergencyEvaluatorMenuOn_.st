emergencyEvaluatorMenuOn: aBuilder 
	<worldMenu> 
	
	(aBuilder item: #'Emergency Evaluator')
		action: [self emergencyEvaluator. World restoreMorphicDisplay];
		parent: #Tools;
		help: 'Invoke the emergency evaluator';
		icon: self icon;
		order: 1.