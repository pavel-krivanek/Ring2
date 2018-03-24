tests
testSharedPools

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	self assert: aRGBehavior sharedPools isEmpty.