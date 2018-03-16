tests
testIsBitsLayout

	self assert: (RG2ByteLayout unnamed isBitsLayout).
	self assert: (RG2WordLayout unnamed isBitsLayout).
	self assert: (RG2CompiledMethodLayout unnamed isBitsLayout).
	self deny: (RG2FixedLayout unnamed isBitsLayout).
	