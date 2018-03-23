tests
testKind

	| strategy |
	
	strategy := RG2Behavior newMetaclassTrait behaviorStrategy.
	self deny: strategy isClassStrategy.
	self deny: strategy isMetaclassStrategy.
	self deny: strategy isTraitStrategy.
	self assert: strategy isMetaclassTraitStrategy.
	