tests
testSlotsImplicitEnvironment

	| layout |
	
	layout := RG2InstanceVariableSlotDefinition unnamed.
	self assert: (layout unresolvedProperties includesAll: #(name)).
	self assert: (layout parent isLayout).
	self checkImplicitSingleClassEnvironmentOf: layout parent parent.
	
	
	
	
