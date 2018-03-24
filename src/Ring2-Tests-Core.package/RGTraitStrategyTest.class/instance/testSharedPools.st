tests
testSharedPools

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.
	self assert: (aRGBehavior sharedPools isEmpty).