tests
testIsFixedLayout

	self assert: (RG2FixedLayoutDefinition unnamed isFixedLayout).
	self deny: (RG2WordLayoutDefinition unnamed isFixedLayout).
	