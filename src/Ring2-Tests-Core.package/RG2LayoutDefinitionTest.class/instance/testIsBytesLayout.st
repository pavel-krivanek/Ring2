tests
testIsBytesLayout

	self assert: (RG2ByteLayoutDefinition unnamed isByteLayout).
	self assert: (RG2CompiledMethodLayoutDefinition unnamed isByteLayout).
	self deny: (RG2FixedLayoutDefinition unnamed isByteLayout).
	