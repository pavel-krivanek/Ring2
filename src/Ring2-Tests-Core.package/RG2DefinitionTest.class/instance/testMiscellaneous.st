as yet unclassified
testMiscellaneous

	| def fullCopy| 
	
	"we cannot test RG2Definition directly here"
	def := RG2Class named: #SomeDefinition.
	self assert: (def asRGDefinition == def).
	self assert: def fullName equals: #SomeDefinition.
	
	fullCopy := def fullCopy.
	self assert: (fullCopy ~~ def).
	self assert: fullCopy name equals: def name.
	
	self deny: (def unresolvedValue isRing2Resolved).
	
	
	