tests
testIsPointerLayout

	self assert: (RG2FixedLayoutDefinition unnamed isPointerLayout).
	self deny: (RG2EmptyLayoutDefinition unnamed isPointerLayout).
	