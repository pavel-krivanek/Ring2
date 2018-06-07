tests
testUnresolveName

	| def result | 
	
	def := RGComment unresolved.
	self deny: (def hasResolvedName).
	def unresolveName.
	self deny: (def hasResolvedName).
	def name: #SomeName.
	self assert: (def hasResolvedName).
	result := def unresolveName.
	self deny: (def hasResolvedName).
	self assert: result isRGUnresolvedValue.