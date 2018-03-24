tests
testLayout

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: aRGBehavior layout isPointerLayout 