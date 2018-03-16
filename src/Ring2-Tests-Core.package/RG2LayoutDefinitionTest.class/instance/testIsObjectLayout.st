tests
testIsObjectLayout

	self assert: (RG2ImmediateLayout unnamed isObjectLayout).
	self deny: (RG2EmptyLayout unnamed isObjectLayout).
	