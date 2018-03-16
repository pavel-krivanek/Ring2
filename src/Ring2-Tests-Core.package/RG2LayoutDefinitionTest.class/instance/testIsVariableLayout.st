tests
testIsVariableLayout

	self assert: (RG2VariableLayout unnamed isVariableLayout).
	self assert: (RG2BitsLayout unnamed isVariableLayout).
	self deny: (RG2FixedLayout unnamed isVariableLayout).
	self assert: (RG2CompiledMethodLayout unnamed isVariableLayout).
	