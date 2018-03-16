tests
testClassVariableImplicitEnvironment

	| classVariable |
	
	classVariable := RG2ClassVariable unnamed.
	self assert: (classVariable hasUnresolved: #name).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	classVariable := RG2ClassVariable named: #SomeClassVariable.
	self assert: (classVariable hasResolved: #name).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	
	
