tests
testIsCompiledMethodLayout

	self assert: (RG2CompiledMethodLayoutDefinition unnamed isCompiledMethodLayout).
	self deny: (RG2FixedLayoutDefinition unnamed isCompiledMethodLayout).
	