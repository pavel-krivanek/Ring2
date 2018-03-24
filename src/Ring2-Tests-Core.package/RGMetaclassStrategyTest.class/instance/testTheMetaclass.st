tests
testTheMetaclass

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newMetaclass.
	self assert: (aRGBehavior theMetaClass) equals: aRGBehavior.