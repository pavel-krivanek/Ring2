tests
testKindOfSubclass

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	self assert: aRGBehavior kindOfSubclass equals: ' subclass: '.