private
formatCritic: aCritic
	
	^  String streamContents: [:s |
		aCritic isCompiledMethod
			ifTrue: [ 
				s << aCritic methodClass name << '>>#' << aCritic selector  << ' (' << aCritic methodClass theNonMetaClass category << ')' ]
			ifFalse: [
				s << aCritic name << ' (' << aCritic category << ')' ]].
"	result := String streamContents: 
					[:s | s   
						<< result 
						<< ' (' 
						<< (checker manifestBuilderOf: aCritic) packageName  todo ' fgfg'
						<< ')' ]."