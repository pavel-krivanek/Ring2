tests
testBadInstantiation

	self should: [ RG2Behavior named: #SomeBehavior ] raise: RG2BadInstantiationError 