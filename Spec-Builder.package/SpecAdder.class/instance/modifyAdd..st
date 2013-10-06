private
modifyAdd: anAdd

	| fractions name aSpec offsets |

	name := instVars selectedItem asString.
	aSpec := selectors selectedItem asString.
	fractions := self class compilerClass evaluate:  fractionField getText.
	offsets := self class compilerClass evaluate: offsetField getText.
	
	anAdd second first at: 2 put: name.
	anAdd second first at: 3 put: aSpec.
	anAdd second third at: 3 put: fractions.
	anAdd second third at: 4 put: offsets.