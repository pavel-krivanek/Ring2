tests
testCreationByMethod

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newMetaclass.
	self assert: (aRGBehavior isBehavior).	
	self assert: (aRGBehavior behaviorStrategy isMetaclassStrategy).