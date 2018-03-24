tests
testSharedPoolNames

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.
	self assert: (aRGBehavior sharedPoolNames isEmpty).