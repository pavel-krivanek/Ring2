tests
testIsWordLayouts

	self assert: (RG2WordLayout unnamed isWordLayout).
	self deny: (RG2EmptyLayout unnamed isWordLayout).
	