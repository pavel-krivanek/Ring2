tests
testIsPointerLayout

	self assert: (RG2FixedLayout unnamed isPointerLayout).
	self deny: (RG2EmptyLayout unnamed isPointerLayout).
	