tests
testIsFixedLayout

	self assert: (RG2FixedLayout unnamed isFixedLayout).
	self deny: (RG2WordLayout unnamed isFixedLayout).
	