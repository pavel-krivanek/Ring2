tests
testIsWeakLayout

	self assert: (RG2WeakLayout unnamed isWeakLayout).
	self deny: (RG2EmptyLayout unnamed isWeakLayout).
	