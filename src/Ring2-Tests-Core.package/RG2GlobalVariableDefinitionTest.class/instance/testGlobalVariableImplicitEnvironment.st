tests
testGlobalVariableImplicitEnvironment

	| globalVariable |
	
	globalVariable := RG2GlobalVariable unnamed.
	self assert: (globalVariable hasUnresolved: #name).
	self assert: globalVariable environment ask globalVariables size equals: 1.
	self assert: (globalVariable environment ask globalVariables anyOne == globalVariable).
	