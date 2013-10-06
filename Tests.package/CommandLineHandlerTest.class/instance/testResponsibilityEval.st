tests
testResponsibilityEval
	| args |
	args := self argumentsWith: #('eval' '1+2').
	self assert: (DefaultCommandLineHandler isResponsibleFor: args).
	self deny: (BasicCodeLoader isResponsibleFor: args).
	self assert: (EvaluateCommandLineHandler isResponsibleFor: args).
	
	args := self argumentsWith: #('-e' '1+2').
	self assert: (DefaultCommandLineHandler isResponsibleFor: args).
	self deny: (BasicCodeLoader isResponsibleFor: args).
	self assert: (EvaluateCommandLineHandler isResponsibleFor: args).
	
	args := self argumentsWith: #('--evaluate' '1+2').
	self assert: (DefaultCommandLineHandler isResponsibleFor: args).
	self deny: (BasicCodeLoader isResponsibleFor: args).
	self assert: (EvaluateCommandLineHandler isResponsibleFor: args).