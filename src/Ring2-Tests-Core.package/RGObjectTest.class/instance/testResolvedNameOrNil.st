tests
testResolvedNameOrNil

	| def | 
	
	def := RGClass unresolved.
	self assert: def resolvedNameOrNil equals: nil.
	
	def := RGClass named: #SomeName.
	self assert: def resolvedNameOrNil equals: #SomeName.
		