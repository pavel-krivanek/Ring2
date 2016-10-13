tests
testPoolVariableImplicitEnvironment

	| poolVariable |
	
	poolVariable := RG2PoolVariableDefinition unnamed.
	self assert: (poolVariable hasUnresolved: #name).
	self assert: (poolVariable parent isClass).
	self checkImplicitSingleClassEnvironmentOf: poolVariable parent.
	
	
	
	
