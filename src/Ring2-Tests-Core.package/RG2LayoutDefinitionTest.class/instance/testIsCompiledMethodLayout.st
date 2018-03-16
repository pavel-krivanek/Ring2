tests
testIsCompiledMethodLayout

	self assert: (RG2CompiledMethodLayout unnamed isCompiledMethodLayout).
	self deny: (RG2FixedLayout unnamed isCompiledMethodLayout).
	