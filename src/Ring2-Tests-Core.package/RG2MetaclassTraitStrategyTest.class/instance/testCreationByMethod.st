tests
testCreationByMethod

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newMetaclassTrait.
	self assert: (aRG2Behavior isBehavior).	
	self assert: (aRG2Behavior behaviorStrategy isMetaclassTraitStrategy).