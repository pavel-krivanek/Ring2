tests
testClassVariableImplicitEnvironment

	| classVariable |
	
	classVariable := RG2ClassVariable unnamed.
	self assert: (classVariable hasResolvedName not).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	classVariable := RG2ClassVariable named: #SomeClassVariable.
	self assert: (classVariable hasResolvedName).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	
	
