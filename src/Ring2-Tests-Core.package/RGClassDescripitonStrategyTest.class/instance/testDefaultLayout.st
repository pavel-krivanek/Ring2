tests
testDefaultLayout

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: aRGBehavior defaultLayout isPointerLayout 