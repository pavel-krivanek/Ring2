tests
testKind

	| strategy |
	
	strategy := RG2Behavior newMetaclass behaviorStrategy.
	self deny: strategy isClassStrategy.
	self assert: strategy isMetaclassStrategy.
	self deny: strategy isTraitStrategy.
	self deny: strategy isMetaclassTraitStrategy.
	