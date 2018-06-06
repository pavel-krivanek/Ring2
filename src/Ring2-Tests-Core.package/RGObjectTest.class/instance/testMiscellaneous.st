as yet unclassified
testMiscellaneous

	| def fullCopy | 
	
	"we cannot test RGObject directly here"
	def := RGClass named: #SomeDefinition.
	self assert: (def asRGDefinition == def).
	self assert: def name equals: #SomeDefinition.
	self assert: def fullName equals: #SomeDefinition.
	def name: #NewName.
	self assert: def name equals: #NewName.
	
	fullCopy := def fullCopy.
	self assert: (fullCopy ~~ def).
	self assert: fullCopy name equals: def name.
	
	self deny: (def unresolvedValue isRingResolved).
	
	
	