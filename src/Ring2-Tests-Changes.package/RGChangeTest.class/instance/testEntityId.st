tests
testEntityId

	| def |
	
	def := RGChange new.
	
	self assert: def entityId equals: nil.
	self deny: def hasResolvedEntityId.
