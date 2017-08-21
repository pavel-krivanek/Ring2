tests
testIsImmediateLayout

	self assert: (RG2ImmediateLayoutDefinition unnamed isImmediateLayout).
	self deny: (RG2FixedLayoutDefinition unnamed isImmediateLayout).
	