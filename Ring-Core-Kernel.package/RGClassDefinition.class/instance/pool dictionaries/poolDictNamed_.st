poolDictNamed: poolName

	^poolDictionaries detect:[ :v| v name = poolName asSymbol ] ifNone:[ nil ]