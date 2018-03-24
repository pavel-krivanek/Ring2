tests
testCreationByMethod

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.
	self assert: (aRGBehavior isBehavior).	
	self assert: (aRGBehavior behaviorStrategy isTraitStrategy).