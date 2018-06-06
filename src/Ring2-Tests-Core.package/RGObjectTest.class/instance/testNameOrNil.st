as yet unclassified
testNameOrNil

	| def | 
	
	def := RGClass unresolved.
	self assert: def nameOrNil equals: nil.
	
	def := RGClass named: #SomeName.
	self assert: def nameOrNil equals: #SomeName.
		