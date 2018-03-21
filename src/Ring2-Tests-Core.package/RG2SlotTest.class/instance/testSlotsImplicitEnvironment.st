tests
testSlotsImplicitEnvironment

	| layout |
	
	layout := RG2InstanceVariableSlot unnamed.
	self assert: (layout hasUnresolved: #name).
	self assert: (layout parent isLayout).
	self checkImplicitSingleClassEnvironmentOf: layout parent parent.
	
	
	
	
