tests
testIsWordLayouts

	self assert: (RG2WordLayoutDefinition unnamed isWordLayout).
	self deny: (RG2EmptyLayoutDefinition unnamed isWordLayout).
	