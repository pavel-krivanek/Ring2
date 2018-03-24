tests
testSharedPools

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newMetaclass.
	self assert: (aRGBehavior sharedPools) isEmpty.