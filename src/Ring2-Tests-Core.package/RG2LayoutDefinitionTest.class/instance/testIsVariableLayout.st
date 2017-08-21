tests
testIsVariableLayout

	self assert: (RG2VariableLayoutDefinition unnamed isVariableLayout).
	self deny: (RG2FixedLayoutDefinition unnamed isVariableLayout).
	