tests
testDefaultMetaclass

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: aRGBehavior defaultMetaClass isMeta 