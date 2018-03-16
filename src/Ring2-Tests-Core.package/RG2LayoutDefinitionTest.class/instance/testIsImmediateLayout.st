tests
testIsImmediateLayout

	self assert: (RG2ImmediateLayout unnamed isImmediateLayout).
	self deny: (RG2FixedLayout unnamed isImmediateLayout).
	