tests
testIsBytesLayout

	self assert: (RG2ByteLayout unnamed isByteLayout).
	self assert: (RG2CompiledMethodLayout unnamed isByteLayout).
	self deny: (RG2FixedLayout unnamed isByteLayout).
	