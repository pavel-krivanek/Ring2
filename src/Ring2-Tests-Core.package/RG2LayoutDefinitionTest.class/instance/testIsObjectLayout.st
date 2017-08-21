tests
testIsObjectLayout

	self assert: (RG2ImmediateLayoutDefinition unnamed isObjectLayout).
	self deny: (RG2EmptyLayoutDefinition unnamed isObjectLayout).
	