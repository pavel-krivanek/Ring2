tests
testClassVariableImplicitEnvironment

	| classVariable |
	
	classVariable := RG2ClassVariableDefinition unnamed.
	self assert: (classVariable hasUnresolved: #name).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	classVariable := RG2ClassVariableDefinition named: #SomeClassVariable.
	self assert: (classVariable hasResolved: #name).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	
	
