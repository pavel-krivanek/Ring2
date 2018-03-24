tests
testCreationByMethod

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newMetaclassTrait.
	self assert: (aRGBehavior isBehavior).	
	self assert: (aRGBehavior behaviorStrategy isMetaclassTraitStrategy).