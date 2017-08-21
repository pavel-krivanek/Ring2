tests
testIsBitsLayout

	self assert: (RG2ByteLayoutDefinition unnamed isBitsLayout).
	self assert: (RG2WordLayoutDefinition unnamed isBitsLayout).
	self assert: (RG2CompiledMethodLayoutDefinition unnamed isBitsLayout).
	self deny: (RG2FixedLayoutDefinition unnamed isBitsLayout).
	