tests
testUnresolveName

	| def | 
	
	def := RGClass unresolved.
	self deny: (def hasResolvedName).
	def unresolveName.
	self deny: (def hasResolvedName).
	def name: #SomeName.
	self assert: (def hasResolvedName).
	def unresolveName.
	self deny: (def hasResolvedName).
