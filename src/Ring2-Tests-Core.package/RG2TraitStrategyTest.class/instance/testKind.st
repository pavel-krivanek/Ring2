tests
testKind

	| strategy |
	
	strategy := RG2Behavior newTrait behaviorStrategy.
	self deny: strategy isClassStrategy.
	self deny: strategy isMetaclassStrategy.
	self assert: strategy isTraitStrategy.
	self deny: strategy isMetaclassTraitStrategy.
	