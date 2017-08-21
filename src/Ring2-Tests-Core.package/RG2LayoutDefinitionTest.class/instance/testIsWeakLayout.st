tests
testIsWeakLayout

	self assert: (RG2WeakLayoutDefinition unnamed isWeakLayout).
	self deny: (RG2EmptyLayoutDefinition unnamed isWeakLayout).
	