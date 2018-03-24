tests
testInstSize

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.
	self assert: aRGBehavior instSize equals: 0