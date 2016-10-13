tests
testClassVariableImplicitEnvironment

	| layout |
	
	layout := RG2ClassVariableDefinition unnamed.
	self assert: (layout unresolvedProperties includesAll: #(name)).
	self checkImplicitSingleClassEnvironmentOf: layout parent.
	
	layout := RG2ClassVariableDefinition named: #SomeClassVariable.
	self assert: (layout resolvedProperties includesAll: #(name)).
	self checkImplicitSingleClassEnvironmentOf: layout parent.
	
	
	
