tests
testKind

	| strategy |
	
	strategy := RG2Behavior newClass behaviorStrategy.
	self assert: strategy isClassStrategy.
	self deny: strategy isMetaclassStrategy.
	self deny: strategy isTraitStrategy.
	self deny: strategy isMetaclassTraitStrategy.
	